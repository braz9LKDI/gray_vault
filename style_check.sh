#!/bin/bash
# Flags docs/style_guidelines.md violations that markdownlint cannot check.
# Usage: bash style_check.sh [note.md ...]   (no arguments: every note outside 99-archive)
#        bash style_check.sh --test           (self-check against a planted fixture)
# Output: file:line: rule: text. Rules marked "candidate" need a human decision.
# A reviewed line (a quotation, a kept candidate) is skipped by adding "<file><TAB><exact line>" to .style_check_accept.
set -euo pipefail
export LC_ALL=C.UTF-8 # grep -P only reads á and \x{...} correctly in a UTF-8 locale

accept="$(dirname "$0")/.style_check_accept"
allowed_chars='[^\x00-\x7FáéíóúüñÁÉÍÓÚÜÑ¿¡\x{2500}-\x{257F}]'

check() {
    { grep -nHP "$allowed_chars" -- "$@" | sed -E 's/^([^:]+:[0-9]+):/\1: characters: /' || true
      gawk -v accept="$accept" '
        function flag(rule) {
            if ((FILENAME "\t" $0) in accepted) return
            printf "%s:%d: %s: %s\n", FILENAME, FNR, rule, $0 }
        BEGIN {
            while ((getline l < accept) > 0) accepted[l]
            split("bash ps1 javascript dockerfile md text python c cpp cs java mermaid json yaml xml ini http", t)
            for (i in t) tags[t[i]]
            # Generics and includes look like placeholders, so these fences skip that check.
            split("c cpp cs java javascript python xml md mermaid", s)
            for (i in s) source[s[i]]
        }
        FNR == 1 { fm = ($0 == "---"); fence = ""; math = 0; prev_item = 0; if (fm) next }
        fm { if ($0 == "---") fm = 0; next }
        match($0, /^[ \t]*(`{3,}|~{3,})[ \t]*([^ \t]*)/, m) {
            if (fence == "") {
                fence = m[1]; tag = m[2]
                if (tag != "" && !(tag in tags)) flag("fence-tag")
            } else if (m[2] == "" && substr(m[1], 1, 1) == substr(fence, 1, 1) && length(m[1]) >= length(fence)) {
                fence = ""
            }
            prev_item = 0; next
        }
        /<[A-Za-z0-9_-]*(_[A-Za-z0-9]|[a-z][A-Z]|[A-Z][a-z])[A-Za-z0-9_-]*>|<[A-Za-z0-9]+( [A-Za-z0-9]+)+>/ {
            if (fence == "" || !(tag in source)) flag("placeholder")
        }
        fence != "" { prev_item = 0; next }
        /^[ \t]*\$\$[ \t]*$/ { math = !math; prev_item = 0; next }
        math { next }
        {
            line = $0
            gsub(/`[^`]*`/, "", line)
            if (line ~ /\$[0-9.,]+\$/) flag("math-number")
            gsub(/\$\$[^$]*\$\$|\$[^$]*\$/, "", line)
            gsub(/\]\([^)]*\)/, "]", line)
            gsub(/https?:\/\/[^ )>]*/, "", line)
            is_item = match(line, /^[ \t]*([-*+]|[0-9]+[.)])[ \t]+/)
            text = is_item ? substr(line, RLENGTH + 1) : line

            voice = line
            gsub(/"[^"]*"/, "", voice) # quotations keep their original wording
            if (tolower(voice) ~ /\y(you|your|yours|yourself|yourselves)\y/) flag("second-person")
            if (voice ~ /,[^,.;:]+, and\y/) flag("oxford-comma (candidate)")
            if (text ~ /[^ ] +--? +[^ ]/) flag("dash")
            if (match(line, /^#+[ \t]+/)) {
                n = split(substr(line, RLENGTH + 1), w, /[ \t]+/)
                for (i = 2; i <= n; i++) if (w[i] ~ /^[A-Z][a-z]/ && w[i - 1] !~ /\.$/) { flag("heading-case (candidate)"); break }
            }
            if (is_item) {
                if ($0 !~ /([.?:]|\?\]\])[ \t]*$/) flag("list-period")
                if (line ~ /\*\*|__/) flag("list-bold")
                indent = match(line, /[^ \t]/) - 1
                if (prev_item && indent <= prev_indent) flag("list-blank-line") # a nested first child follows its parent directly
                prev_indent = indent
            }
            prev_item = is_item
        }
      ' "$@"
    } | sort -t: -k1,1 -k2,2n
}

self_test() {
    local dir; dir=$(mktemp -d); trap 'rm -rf "$dir"' RETURN
    cat > "$dir/t.md" <<'EOF'
---
sources:
    - author
---

# Installing The Package

You, me, and them – fast.

The file weighs $5$ MB and `you` stays quiet - here.

Run `git clone <REPO_URL>` now.

- No period
- **Bold** item.

```SH
you, and <REPO_URL>
```

````md
```bash
you
```
````

```java
List<String> you;
```
EOF
    cat > "$dir/expected" <<'EOF'
6: heading-case (candidate)
8: characters
8: oxford-comma (candidate)
8: second-person
10: dash
10: math-number
12: placeholder
14: list-period
15: list-blank-line
15: list-bold
17: fence-tag
18: placeholder
EOF
    check "$dir/t.md" | cut -d: -f2,3 | sort > "$dir/actual"
    diff <(sort "$dir/expected") "$dir/actual" && echo "self-test passed"
}

if [[ ${1:-} == --test ]]; then self_test; exit; fi

if (($#)); then
    files=("$@")
else
    mapfile -d '' -t files < <(git ls-files -z -co --exclude-standard -- '*.md' ':!99-archive' ':!docs/style_guidelines.md')
fi
mapfile -d '' -t files < <(grep -LZ '^kanban-plugin:' -- "${files[@]}") # Kanban boards are exempt
out=$(check "${files[@]}")
[[ -z $out ]] || { printf '%s\n' "$out"; exit 1; }
