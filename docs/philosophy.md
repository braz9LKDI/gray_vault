# Philosophy

This vault is my second brain in plain text: notes I control, readable with any editor, versioned with Git and connected with Obsidian. This page explains why it works the way it does. The rules themselves live in [structure](structure.md), [note types](note_types.md), [conventions](conventions.md) and the [style guidelines](style_guidelines.md).

## Plain text first

Every note is a Markdown file. There is no database and no binary format, so the vault stays readable from a terminal, from VS Code or on GitHub. It outlives any app.

Obsidian is the main editor because it is built around linked notes, but nothing in the vault depends on it. Git is the backup and the undo: every change is a commit, and the history records when each note changed.

## Context and knowledge

The vault separates where I learned something from what the thing is about.

A source note keeps the context: what one book, course or class said, in the order it said it. A concept note keeps the knowledge: one idea, explained so it can be reused anywhere.

A topic usually appears first in a source. When it becomes useful beyond that source, it is extracted into a concept note in `01-areas`; the source note then links to it. Source notes preserve context; area notes preserve knowledge.

## Links over copies

An explanation lives in exactly one note. Other notes link to it instead of repeating it, so a correction happens once and reaches every place that needs it.

Folder notes turn those links into maps. A folder named `scrum/` has a note `scrum.md` that explains the topic and links the notes inside it.

## Notes can be incomplete

A rough note is better than a forgotten idea. The `status` property records how finished a note is: a note grows from `stub` to `draft` to `stable`, and an unfinished note is still worth linking.

## What the folder names mean here

The top-level folders look like PARA (projects, areas, resources and archive), but two names mean something different in this vault:

- `01-areas` holds knowledge organized by topic, the permanent notes. In PARA, an area is an ongoing responsibility.

- `02-resources` holds notes taken from one source each, closer to the literature notes of a Zettelkasten.

Renaming the folders would rewrite every full-path link, so the names stay and this page defines them.

## Public and private

The repository is public. The `journal/` folder is gitignored, so its notes are never committed; anything personal goes there and nowhere else.
