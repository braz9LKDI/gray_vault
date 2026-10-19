# Vault context

Context for Claude Code sessions in this vault, kept in case a conversation is lost. How the vault works is documented in `docs/`; this file only adds how to work in it and where the work stands.

## Where the rules live

- `docs/structure.md`: what belongs in each folder and where a new note goes.

- `docs/note_types.md`: the values of `type` and `status` and what each type contains.

- `docs/conventions.md`: names, links, frontmatter and assets.

- `docs/workflows.md`: capturing, processing, reviewing and archiving notes.

- `docs/tooling.md`: npm scripts, the style check, the review tracker and the Obsidian plugins.

- `docs/style_guidelines.md`: how the text of a note is written. It is the only source of writing rules.

A change to how the vault works updates the matching page in `docs/` in the same commit.

## Working in this vault

- I am on a basic Claude plan, so scripts and the commands in `docs/tooling.md` come before reading notes one by one.

- A new session starts with `npm run lint:style` and `npm run review:pending`, not by reading notes.

- Notes are renamed and moved with `obsidian move`, so their links follow. The CLI needs Obsidian running, which can be started from WSL with `/mnt/c/Windows/System32/cmd.exe /c start "" "obsidian://open?vault=gray_vault"`. The CLI exits with 0 even when it fails and cannot move a note into a folder that does not exist, so the target folder is created first and the output is checked.

- Content errors in my notes are reported, not fixed, unless I ask for a fix: I rewrite them myself because I am learning. Phase 2, improving the notes, follows the same rule: Claude lists the problems of a note and I rewrite it.

## State on 2026-10-18

- The structure is applied: paths are lowercase in Git and on disk, filenames are unique outside `99-archive` and every note in `01-areas` and `02-resources` has `type` and `status`. The docs in `docs/` describe it.

- `npm run lint:style` passes for the whole vault, the archive included. markdownlint reports errors only in `aprende_docker_ahora.md`, `scribbles.md`, the Kanban boards and `journal/`; Prettier also flags `course_board.md`, which the Kanban plugin rewrote.

- The style review is done for every note except `aprende_docker_ahora.md` and `scribbles.md`, which I review myself. The archive was reviewed in full and its errors were fixed on 2026-10-19, at my request. The items still open under Archive in `00-inbox/content_issues.md` are exercises that were never answered and the 10th-semester table, which needs my grades.

- Four notes wait in `00-inbox/` for me to place them. `journal/` still has `reviewed_on`, because it is not in Git.

- The only broken links are 3 archive images that no longer exist and the READMEs inside `node_modules/`.
