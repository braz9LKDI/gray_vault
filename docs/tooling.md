# Tooling

This page lists the tools that keep the vault consistent and how to run them.

## npm scripts

| script                   | what it does                                                                  |
| :----------------------- | :---------------------------------------------------------------------------- |
| `npm run format`         | Formats every file with Prettier.                                             |
| `npm run format:check`   | Lists the files Prettier would change.                                        |
| `npm run lint:style`     | Runs `style_check.sh`, which flags the style rules markdownlint cannot check. |
| `npm run review:pending` | Lists the notes that are not in the review tracker.                           |
| `npm run lint:md`        | Runs markdownlint on every note.                                              |
| `npm run lint`           | Same as `lint:md`.                                                            |
| `npm run fix`            | Runs Prettier and then markdownlint with `--fix`.                             |
| `npm run check`          | Runs `format:check` and `lint`.                                               |

## Style check

`style_check.sh` flags the rules of the [style guidelines](style_guidelines.md) that markdownlint cannot check: characters outside the allowlist, fence tags, placeholders, numbers written as mathematics, second person, separator dashes, list periods, bold in lists, blank lines between list items, Oxford comma candidates and heading case candidates. Each line of its output is `<file>:<line>: <rule>: <text>`, and it prints nothing when every note passes.

- It skips `docs/style_guidelines.md` (whose bad examples break the rules on purpose), the Kanban boards and the gitignored `journal/`. The archive is checked like any other folder.

- `bash style_check.sh --test` runs its self-test against a planted fixture.

- Candidate rules need a human decision. A reviewed line that is fine as it is, such as a quotation or a proper name in a heading, goes into `.style_check_accept` as `<file><TAB><exact-line>`. Editing an accepted line makes it flag again.

## Review tracker

`.review_tracker` records the manual review of the rules no script can check. Each line is `<status><TAB><path>`, where the status is `done` or `skip`; `skip` leaves a note out of the review. `npm run review:pending` lists the notes that are not in the tracker yet.

## Formatting configuration

- `.prettierrc.json`: four-space indentation, LF line endings and prose left as written.

- `.markdownlint.jsonc`: markdownlint rules, with four-space list indentation, no line length limit and `<br>` as the only HTML allowed.

- `.editorconfig`: UTF-8, LF, a final newline and four-space indentation for editors.

- `.prettierignore` and `.markdownlintignore`: keep `.obsidian/`, `node_modules/` and `package-lock.json` out of the tools.

These files come from my [style_config](https://github.com/braz9LKDI/style_config) kit.

## Obsidian

| plugin                                                  | role                                                                             |
| :------------------------------------------------------ | :------------------------------------------------------------------------------- |
| Templater                                               | Applies `capture.md` to new notes in the inbox and `default.md` everywhere else. |
| Kanban                                                  | Runs the reading and course boards.                                              |
| Extended MathJax                                        | Loads the macros of `preamble.sty`, such as `\pand`, `\por` and `\card`.         |
| Latex Suite                                             | Snippets for writing mathematics.                                                |
| Vimrc Support                                           | Loads the vim mode mappings in `.obsidian.vimrc`.                                |
| Git                                                     | Commits and syncs the vault from Obsidian.                                       |
| Minimal Theme Settings                                  | Settings of the Minimal theme.                                                   |
| Advanced Tables, Show Whitespace, Relative Line Numbers | Editing aids.                                                                    |
| Discord Rich Presence, WakaTime                         | Activity tracking. Their folders are gitignored.                                 |

The core plugins Properties and Bases show the `type` and `status` of each note and run the views of `notes.base`: Stubs, Drafts and Inbox.

Two settings keep links consistent: Automatically update internal links is on, and the new link format is absolute. `node_modules/` is in Excluded files, which hides it from search, the graph and the quick switcher.

## Obsidian CLI

The `obsidian` command talks to the running app, so Obsidian has to be open. From WSL it is a link to `Obsidian.com`. Useful commands:

- `obsidian move path=<old-path> to=<new-path>`: moves or renames a note and updates every link to it. The target folder has to exist, and the command exits with 0 even when it fails, so its output is the only sign of an error.

- `obsidian unresolved total`: counts the links that point to nothing.

- `obsidian orphans` and `obsidian deadends`: list notes with no incoming links and notes with no outgoing links.

- `obsidian base:query path=notes.base view=Stubs format=paths`: prints the notes of a view.

## Links

`obsidian unresolved total` counts every vault file, including those in Excluded files. Two groups of leftovers are known:

- About 20 links inside the READMEs of `node_modules/`.

- 3 images linked from `99-archive/college/semesters/07/inteligencia_artificial/` that no longer exist.

## Ignored files

`node_modules/`, `journal/`, `/to_export.md`, the Obsidian workspace, the list of enabled community plugins and the folders of the two activity tracking plugins.
