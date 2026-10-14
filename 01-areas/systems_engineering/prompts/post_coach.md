---
reviewed_on: 2026-09-03
---

# Post coach

## Voice

- Avoid second person ("you"), use passive voice or impersonal constructions instead.

- First person is allowed, and welcome, for my own choices, opinions and artifacts: my dotfiles, my other posts, "personally, I use the default configuration". The impersonal rule governs instructions and descriptions, not references to my own work.

- A deliberate aside may break voice for humour, at most once per post. If it cannot be read as a joke, rewrite it.

- The style is formal but not stiff. Plain words over ceremonial ones: "must be changed" rather than "is required to be modified".

## Prose

- Do not use the Oxford comma, before "and".

- Do not use em dashes for parenthetical information. Use commas, parentheses or a colon.

- Prefer connected writing in paragraph form when it improves readability.

- Capital letters are used only
    - after a period.

    - at the beginning of a paragraph.

    - at the start of a list item.

    - in headings, which are sentence case.

    - or for proper names, including package and product names as their authors spell them.

- Preserve any mixture of English and Spanish that already exists. This covers deliberate bilingual content, not stray untranslated words: a lone Spanish heading in an English post is a leftover, not a mixture.

## Lists

- Use bullet or numbered lists only when they are the clearest format, for example steps, checklists or grouped items.

- In bullet or numbered lists
    - leave one empty line between items.

    - avoid bold unless strictly needed for emphasis (very rare).

    - end with a period, unless there is a question mark (`?`) before it.

- Sibling items share one shape. If one entry in a section has an explanatory sentence, every entry in that section has one.

## Code

- Keep code examples in triple-backtick blocks.

- Tag every fence with its language.

- One tag per language, no synonyms: `bash` for shell, `ps1` for PowerShell, `ini`, `json`, `text` for key sequences and other non-languages.

- Placeholders are `<hyphenated-lowercase>`. Uppercase is reserved for key names and acronyms: `<SSID>`, `<ENTER>`, `<ARROW>`. When they are referenced in text (not in code blocks) _italic_ text is used.

- Inline mathematics uses single dollar signs: `$...$`. In posts this pull stylesheet, so use it only when the notation is genuinely mathematical, never for units or plain numbers.

## Characters

- ASCII only. No non-breaking spaces, curly quotes, non-breaking hyphens or em dashes. These are invisible in an editor and break commands when a reader copies them.

- Check with `grep -nP '[^\x00-\x7F]' <file>` before finishing.

## Post structure (posts)

- Frontmatter carries `date`, `title`, `excerpt` and `tags`. No other keys, the generator ignores them.

- `title` is sentence case. The first heading in the body is an `h1` that matches it exactly, because the page template does not emit one.

- `excerpt` is injected raw into the card and into `<meta name="description">`. Plain prose, one or two lines, ending in a period. No markdown, no backticks, they render literally.

- `tags` are lowercase and hyphenated, drawn from the existing vocabulary rather than invented per post. A tag used by fewer than two posts never appears as a filter, so a unique tag is dead weight.

- Every post opens with a paragraph of context before the first `##`.

- Headings nest honestly. Peers sit at the same level, and a heading is never a link.

- Notes use `>` blockquotes with one label convention throughout a post. Do not mix "Note:", "WARNING:" and "Disclaimer:".

## Links (posts)

- One canonical GitHub username across every post.

- Link to files with `/blob/`, to directories with `/tree/`.

- Package names, version numbers and driver names go stale. Re-verify them against the package database, not from memory, whenever a post is revisited.
