---
reviewed_on: 2026-09-22
---

# Inspecting objects

```bash
git cat-file -t <hash>
git cat-file -p <hash>
```

The `-t` flag reports the type and `-p` pretty-prints the contents according to that type. A commit prints as header lines followed by a blank line and the message. A tree prints as one line per entry, with mode, type, hash and name. A blob prints as the raw file contents.

An abbreviated example of walking from a commit down to a file:

```text
$ git cat-file -p <commit-hash>
tree e77071aeb974a61429e31364162a36b73e4fc295
parent 22d23b03db02115279d2654058c8ce6c36ada4ed
author braz9LKDI <67658575+braz9LKDI@users.noreply.github.com> 1789877672 -0500
committer braz9LKDI <67658575+braz9LKDI@users.noreply.github.com> 1789877672 -0500

G: add "The Curios Case of Benjamin Button" to `titles.md`

$ git cat-file -p e77071aeb974a61429e31364162a36b73e4fc295
100644 blob 14bf50928ccbb6d75039d2a24d8ce85a49eb4cc1    classics.csv
100644 blob 861d197a64bffe27d76e40b217ed70f8bde228c4    contents.md
040000 tree 18d53b21a68cf7f8d8b4fb2c293ed409fb967cd3    quotes
100644 blob 770014d6522ed6d8d96588310ed870f39c15aa8f    titles.md

$ git cat-file -p 14bf50928ccbb6d75039d2a24d8ce85a49eb4cc1
title, director, year
One Crazy Summer, Savage Steve Holland, 1986
The Princess Bride, Rob Reiner, 1987
The Goonies, Richard Donner, 1985
The Breakfast Club, John Hughes, 1985
Monty Python and the Holy Grail, Terry Gilliam, 1975
```

The chain is always the same: a commit names one tree, a tree names blobs and subtrees and a blob holds bytes.
