# Workflows

These are the routine tasks of the vault, step by step. Where a note goes is decided with the questions in [structure](structure.md#where-does-a-note-go).

## Capture a note

1. Create the note in `00-inbox/`. The capture template only writes the title.

2. Write whatever needs keeping. Frontmatter is not needed yet.

When the place is already clear, the note can be created directly in its folder instead. The default template asks for its type and marks it as a stub.

## Process the inbox

For each note in the inbox:

1. Decide its place with the questions in [structure](structure.md#where-does-a-note-go).

2. Move it from Obsidian, by dragging it in the file explorer or with `obsidian move path=<old-path> to=<new-path>`, so its links follow.

3. Set its `type` and `status` in the properties panel.

4. Link it from its folder note or from a related note.

A note with nothing worth keeping is deleted instead. The Inbox view of `notes.base` shows what is left.

## Plan a note

1. Create the note in its topic folder, with only its title.

2. Leave it as `status: stub`. The Stubs view of `notes.base` lists every planned note.

## Add a book

1. While the book is planned or being read, it is a card on the `bookshelf.md` board.

2. With the first notes, create `02-resources/books/<title>.md`, or a folder `02-resources/books/<title>/` with one numbered note per chapter. Give it `type: source` and fill in `sources`.

3. Add the book to `books/books.md`.

4. When the book is finished, move its card to the done column.

## Add a course

1. While the course is planned or in progress, it is a card on the `courses/course_board.md` board.

2. With the first notes, create the course note or folder in `02-resources/courses/`, with `type: source`.

3. Add the course to `courses/courses.md`.

## Extract a concept from a source

A concept is extracted when a source note explains something that is needed somewhere else, or when the same idea shows up in a second source.

1. Create the concept note in its topic folder in `01-areas/`, with `type: concept`.

2. Move the explanation into it, written in my own words.

3. Replace the explanation in the source note with a link to the concept note.

4. Link the concept note from its folder note.

## Maintain a folder note

When a folder gets new notes, its folder note gets a line for each of them. A folder gets a folder note once it is hard to tell what the folder contains from the file names alone.

## Review a note

1. Check its facts and run any code it contains.

2. Check its links, and run `npm run lint:style` for the style rules a script can check.

3. Set its status to `stable`. The Drafts view of `notes.base` lists the notes still waiting for a review.

## Archive a note

1. Move it from Obsidian to the same relative place under `99-archive/`. A finished project moves as a whole folder to `99-archive/projects/<name>/`.

2. Leave its links as they are. Obsidian keeps them working, and the archive is excluded from the views of `notes.base`.

3. Keep it in the review tracker. The style check and the review cover the archive too, so a reviewed note stays `done` after the move.

## Commit changes

1. `npm run fix`: formats every note and fixes what markdownlint can fix.

2. `npm run lint:style`: prints nothing when the style rules pass.

3. `npm run lint`: lists what markdownlint could not fix.

4. `obsidian unresolved total`: counts unresolved links. Only known leftovers should remain, as listed in [tooling](tooling.md#links).

5. Commit. Commits made from Obsidian with the Git plugin use the message `vault backup: <date-time>`.
