---
reviewed_on: 2026-08-09
---

# Porcelain and plumbing commands

Git is often described as two layers stacked on top of each other. The lower layer, called plumbing, consists of small commands that expose the object database and the index directly. The upper layer, called porcelain, consists of the friendly commands most people type every day. The metaphor comes from household plumbing: the pipes do the real work, while the porcelain fixtures are the part designed for human contact.

## What separates the two layers

Plumbing commands are meant to be composed inside scripts. Their output format is stable across versions, they rarely read user-facing configuration such as colouring or pagination and they tend to fail loudly instead of guessing intent. Porcelain commands are meant to be typed by a person. They combine several plumbing operations, respect user configuration and aliases and their output may change between releases whenever a better presentation is found.

The practical consequence is a compatibility guarantee. Parsing the output of `git status` or `git log` in a script is fragile, because that output is documented as being for human consumption. Parsing `git for-each-ref` or `git rev-list` is safe, because those formats are contractual.

## The categories in the official manual

The `git(1)` manual page does not use two buckets but several. Running `git help -a` reproduces the same grouping.

1. High-level commands, or porcelain, split into main porcelain commands and ancillary commands. The ancillary group covers manipulators such as `git config`, interrogators such as `git help` and commands for interacting with other systems such as `git svn`.

2. Low-level commands, or plumbing, split into manipulation commands, interrogation commands, commands that sync repositories and internal helper commands.

## Representative examples

Porcelain, the everyday surface:

```bash
git add
git commit
git status
git log
git branch
git merge
git rebase
git clone
git push
```

Plumbing, the machinery underneath:

```bash
git hash-object
git cat-file
git update-index
git write-tree
git commit-tree
git update-ref
git symbolic-ref
git rev-parse
git rev-list
git ls-files
git ls-tree
git for-each-ref
git diff-tree
```

## Building a commit without porcelain

The clearest way to see the layering is to reproduce `git add` plus `git commit` using only plumbing. Each step corresponds to one object written into `.git/objects` or one reference updated.

```bash
echo "hello" | git hash-object -w --stdin
git update-index --add --cacheinfo 100644 <blob-sha> hello.txt
git write-tree
git commit-tree <tree-sha> -p HEAD -m "manual commit"
git update-ref refs/heads/main <commit-sha>
```

The blob stores the file content, the tree stores the directory listing, the commit points at the tree and records metadata and the reference update moves the branch. Everything `git commit` does is a convenience wrapper around this sequence.

## The confusing `--porcelain` flag

A frequent source of misunderstanding is the `--porcelain` option accepted by commands such as `git status` and `git push`. Despite the name, it does not produce friendlier output. It produces a stable, machine-readable format, which is precisely what plumbing normally offers. The name refers to the fact that a porcelain command is being asked to behave like plumbing for the benefit of a script. `git status --porcelain=v2` provides a richer version of the same idea.
