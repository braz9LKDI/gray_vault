# Vault context

Context for Claude Code sessions in this vault, kept in case a conversation is lost. The rules for notes live in `style_guidelines.md`; this file records the tooling, the decisions behind it and where the work stands.

## Tooling

- `npm run fix` runs Prettier and then markdownlint with `--fix`. The markdownlint config is `.markdownlint.jsonc` at the vault root.

- `npm run lint` runs markdownlint.

- `npm run lint:style` runs `style_check.sh`, which flags the rules of `style_guidelines.md` that markdownlint cannot check. `bash style_check.sh --test` runs its self-test.

- `.style_check_accept` holds reviewed lines the style check skips, one per line as `<file><TAB><exact-line>`. Editing an accepted line makes it flag again.

- `.review_tracker` records the manual review of the rules no script checks, one note per line as `<status><TAB><path>`. The status is `done` or `skip`, and `skip` is how a note is left out of the review. `npm run review:pending` lists the notes not yet in the tracker.

## Decisions

- Characters follow an allowlist: ASCII, the Spanish letters and box-drawing characters.

- Numbered headings drop the number (`## 35 - X` became `## X`) and quote attributions go in parentheses.

- Kanban boards (`kanban-plugin` in the frontmatter) are exempt from the style rules.

- A nested list starts right under its parent item, because Prettier removes the blank line there.

- Quotations keep their original wording. Book excerpts are marked with `...`, and the coach prompts in `01-areas/systems_engineering/prompts` address the AI in second person on purpose.

- Display math blocks contain no blank lines, because Prettier and markdownlint (MD012) undo each other's fix around them.

- `99-archive` is formatted by Prettier but excluded from the style check and the review. `journal/` is gitignored, so every tool skips it.

## Structure decisions (agreed 2026-10-18, not applied yet)

- Frontmatter: `reviewed_on` is dropped everywhere. Notes outside `00-inbox`, `99-archive` and `journal/` get `type` and `status`; `sources` stays.

- `type` is one of: `concept` (explains one idea), `howto` (steps or commands to get a result), `reference` (lookup material such as cheatsheets, prompts and keybindings), `source` (notes taken from one book, course, video or chapter), `index` (a note whose job is navigation) or `project` (the main note of a project).

- `status` is one of: `stub` (a title or a line), `draft` (content that is incomplete or unverified) or `stable` (complete enough to rely on). Phase 2 is what promotes notes to `stable`.

- A project is work I produce that has a finish condition: an app, a thesis, a migration. It lives in `03-projects/<name>/` with a main note `<name>.md` of type `project`; knowledge learned during it goes to `01-areas` and is linked from it. A finished project moves to `99-archive/projects/`. Learning a topic or taking a course is not a project.

- Tool-like notes have no folder of their own: they live in the area of the topic they serve, as `reference` or `howto`. My AI prompts go to `ai/prompts/`, the notes about prompting to `ai/prompting/` and game controls to `01-areas/games/`.

- File and folder names are all lowercase, except `README.md` and `CLAUDE.md`. Outside `99-archive`, every filename is unique; numbered chapter notes inside a source folder are the only exception.

- A folder's main note has the folder's name. It replaces both `definition.md` and `index.md`.

- `00-inbox` is flat and holds only unprocessed notes, which may skip `type` and `status`. A note I plan to write lives in its topic folder with `status: stub`, which replaces `00-inbox/to_do/`. There is no cadence for emptying it yet.

- The Kanban board `bookshelf.md` is the reading list for planned and ongoing books; the books index only lists books that already have notes.

## State on 2026-10-15

- `npm run lint:style` and `npx prettier --check .` pass, and no wikilink or Markdown link outside code is broken.

- The manual review (list or paragraph, sibling shape, tone, leftover Spanish, typos) is done for every note except `aprende_Docker_ahora.md` and `scribbles.md`, which I review myself. Their markdownlint errors (MD024, MD028, MD029, MD033) are most of the 19 left; the rest are in the Kanban boards and my journal.

- The 35 content errors found in the review are fixed and checked off in `00-inbox/content_issues.md`.

- Next is phase 2, improving the notes. It is report-only: Claude lists the problems of a note and I rewrite it, because I am learning.

## Working in this vault

- I am on a basic Claude plan, so scripts and the commands above come before reading notes one by one.

- A new session starts with `npm run lint:style` and `npm run review:pending`, not by reading notes.
