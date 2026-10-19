# Structure

This page describes each folder: what belongs in it, what does not and when a note leaves it. The kinds of notes are described in [note types](note_types.md), and the reasons behind the layout in [philosophy](philosophy.md).

## Top level

| path            | purpose                                                        |
| :-------------- | :------------------------------------------------------------- |
| `00-inbox/`     | Unprocessed notes.                                             |
| `01-areas/`     | Knowledge organized by topic.                                  |
| `02-resources/` | Notes taken from one source each.                              |
| `03-projects/`  | Work with a finish condition (created with the first project). |
| `99-archive/`   | Inactive material kept for reference.                          |
| `templates/`    | Templater templates applied to new notes.                      |
| `docs/`         | How the vault works, these pages included.                     |
| `journal/`      | Private journal, gitignored.                                   |
| `notes.base`    | Bases views of stubs, drafts and the inbox.                    |
| `scribbles.md`  | Loose snippets that do not have a home yet.                    |

The remaining files at the root configure the tooling and are described in [tooling](tooling.md).

## `00-inbox/`

- Belongs: anything captured quickly whose place is not decided yet.

- Does not belong: notes that already have a place, subfolders and notes planned for later, which live in their topic folder as stubs.

- Leaves: when it is processed, as described in [workflows](workflows.md). It moves to its folder with a type and a status, or it is deleted.

There is no fixed cadence for emptying the inbox.

## `01-areas/`

- Belongs: concept, howto and reference notes, grouped in one folder per topic (`math/`, `statistics/`, `systems_engineering/`, `games/`). A topic folder nests as deep as the topic needs.

- Does not belong: notes that follow one source (they go to `02-resources/`) and anything private (it goes to `journal/`).

- Leaves: rarely. Knowledge stays even when the course that taught it ends.

Tool-like notes (cheatsheets, prompts, keybindings, setup guides) have no folder of their own. They live in the topic they serve: AI prompts in `systems_engineering/ai/prompts/`, game controls in `games/`.

## `02-resources/`

- Belongs: source notes, in `books/` and `courses/`. A source is either one note or one folder with numbered chapter notes (`the_linux_command_line/02-learning_the_shell/06-redirection.md`).

- Does not belong: explanations that are useful beyond the source. Those are extracted into `01-areas/` and linked from the source note.

- Leaves: rarely. A finished source keeps its context.

Two Kanban boards plan the work: `books/bookshelf.md` for books and `courses/course_board.md` for courses. They hold what is planned or in progress. The folder notes `books/books.md` and `courses/courses.md` list only the sources that already have notes.

## `03-projects/`

A project is work with a finish condition, such as an app, a thesis or a migration. Learning a topic or taking a course is not a project.

- Belongs: one folder per project, `03-projects/<name>/`, with a main note `<name>.md` and the planning and progress notes of the project.

- Does not belong: knowledge learned during the project, which goes to `01-areas/` and is linked from the project.

- Leaves: when the project is finished, the whole folder moves to `99-archive/projects/<name>/`.

The folder does not exist yet; it is created with the first project.

## `99-archive/`

- Belongs: inactive material, such as finished college semesters in `college/` and finished projects.

- Rules: archived notes get no new content, type or status. Their links keep working. They follow the same style rules as the rest of the vault: the style check covers them and the review tracker records them.

## `templates/`

- `default.md`: applied to every new note outside the inbox. It asks for the type and sets `status: stub`.

- `capture.md`: applied to every new note in `00-inbox/`. It only writes the title, so capturing stays fast.

## Where does a note go?

The first question that gets a yes decides the place:

1. Is it private? It goes to `journal/`.

2. Is its place unclear, or was it captured in a hurry? It goes to `00-inbox/`.

3. Is it planning or progress of work that will finish? It goes to `03-projects/<name>/`.

4. Does it record what one book, course, video or class said? It goes to `02-resources/books/` or `02-resources/courses/`.

5. Does it explain an idea, show how to do something or collect lookup material about a topic? It goes to `01-areas/<topic>/`.

6. Is it no longer active? It goes to `99-archive/`.
