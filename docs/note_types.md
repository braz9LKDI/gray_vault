# Note types

Every note in `01-areas/` and `02-resources/` declares a `type` and a `status` in its frontmatter. Notes in the inbox, the archive, the journal and `docs/` do not; neither do the Kanban boards. The exact frontmatter format is in [conventions](conventions.md).

## Types

| type        | purpose                                              | lives in        | example                                                                                                             |
| :---------- | :--------------------------------------------------- | :-------------- | :------------------------------------------------------------------------------------------------------------------ |
| `concept`   | Explains one idea.                                   | `01-areas/`     | [Object database](../01-areas/systems_engineering/fundamentals/git_and_github/object_database.md)                   |
| `howto`     | Steps or commands to get a result.                   | `01-areas/`     | [Syncing work in progress](../01-areas/systems_engineering/fundamentals/git_and_github/syncing_work_in_progress.md) |
| `reference` | Lookup material: cheatsheets, prompts, keybindings.  | `01-areas/`     | [LaTeX cheatsheet](../01-areas/math/latex_cheatsheet.md)                                                            |
| `source`    | Notes taken from one book, course, video or chapter. | `02-resources/` | [Redirection](../02-resources/books/the_linux_command_line/02-learning_the_shell/06-redirection.md)                 |
| `index`     | Navigation.                                          | folder notes    | [Books](../02-resources/books/books.md)                                                                             |
| `project`   | The main note of a project.                          | `03-projects/`  | None yet.                                                                                                           |

## Status

| status   | meaning                                                        |
| :------- | :------------------------------------------------------------- |
| `stub`   | No content under its headings: a placeholder or a link target. |
| `draft`  | Has content, but it is incomplete or not verified.             |
| `stable` | Complete enough to rely on.                                    |

A note becomes `draft` when it gets its first content, and `stable` after a review that checks its facts, its links and its style. The steps are in [workflows](workflows.md).

## `concept`

- Title: the name of the idea, in sentence case (`# Merge sort`).

- Body: it opens with a definition of one or two sentences, then explains as much as the idea needs. Related notes go in a final `## Related readings` section.

- Links: it is linked from its folder note or from another note, and it links the concepts it builds on.

## `howto`

- Title: the task (`# Undo last commit`).

- Body: numbered steps or a single command block. Caveats go in a blockquote after the step they affect.

- Links: it links the concepts it uses, so the steps stay short.

## `reference`

- Title: what is looked up (`# LaTeX cheatsheet`).

- Body: tables or lists, with no narrative required.

- Prompts for AI tools are references too. They address the AI in second person on purpose, which the [style guidelines](style_guidelines.md) allow for quotations.

## `source`

- Title: the title of the source, or the title of the chapter for chapter notes.

- Frontmatter: `sources` names the author, the address and the language.

- Body: it follows the order of the source. Quotations keep their original wording.

- Links: it links the concept notes extracted from it.

## `index`

- Title: the topic or collection of its folder (`# Books`).

- Body: sections of links, one line per note.

- A folder note that mainly explains its topic is a `concept` instead, as `scrum/scrum.md` is.

## `project`

- Location: `03-projects/<name>/<name>.md`.

- Body: the goal, the finish condition and a task list or a Kanban board.

- Links: it links the knowledge notes in `01-areas/` that the project produced.
