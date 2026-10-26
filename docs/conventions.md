# Conventions

This page covers how files are named, linked and described. How the text inside a note is written is covered by the [style guidelines](style_guidelines.md).

## File and folder names

- Names are lowercase snake case: `merge_sort.md`, `git_and_github/`. The only exceptions are `README.md`, `CLAUDE.md` and the folder of the Minimal theme in `.obsidian/`.

- Outside `99-archive/`, every filename is unique, so a link never depends on which folder a note is in. Numbered chapter notes inside a source folder are the only exception (`01-introduction.md`).

- A folder's main note has the folder's name: `scrum/scrum.md`, `books/books.md`.

- Ordered notes start with a two-digit number and a hyphen: `01-introduction.md`, `02-navigation.md`.

- A name describes the content of the note, without spaces and without trying to say everything.

- Notes are renamed and moved from Obsidian (or with `obsidian move`), never from a file manager, so every link follows the note.

A duplicate name shows up with:

```bash
git ls-files '*.md' ':!99-archive' | xargs -n 1 basename | sort | uniq -d
```

The only names it prints are numbered chapter notes.

## Links

- Notes link with wikilinks that use the full path from the vault root and an alias: `[[01-areas/math/functions/odd|odd functions]]`. Obsidian writes this format because its new link format is set to absolute.

- The path part of a link is lowercase, like the files.

- A link to a section adds the heading: `[[01-areas/math/functions/odd#Properties|properties of odd functions]]`.

- Images and whole notes are embedded with `![[...]]`.

- `README.md` and the pages in `docs/` use Markdown links with relative paths, so they also work on GitHub.

## Frontmatter

```yaml
---
type: concept
status: draft
sources:
    - author: <author-name>
      url: <source-url>
      language: <language>
---
```

- `type` and `status` are required in `01-areas/` and `02-resources/`. Their values are listed in [note types](note_types.md).

- `sources` is optional and lists where the content comes from. The author is `NA` when it is unknown.

- Other properties are not used: dates are recorded by the Git history, and tags and aliases have no use yet.

## Assets

- Images and other files live in an `assets/` folder next to the notes that use them.

- Their names follow the [style guidelines](style_guidelines.md#assets).
