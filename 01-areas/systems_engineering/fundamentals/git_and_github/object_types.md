---
reviewed_on: 2026-09-22
---

# Object types

1. Blob: the way a file's contents are stored. A blob holds contents only, with no file name and no permissions.

2. Tree: the way a directory is stored. A tree lists names, modes and the hashes of the blobs or subtrees it contains.

3. Commit: a snapshot pointer. A commit records one tree, zero or more parents, an author, a committer and a message.

4. Tag: the object behind an annotated tag. Lightweight tags are plain references and do not create an object.
