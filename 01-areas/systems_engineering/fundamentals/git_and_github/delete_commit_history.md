---
type: howto
status: draft
---

# Delete commit history

1. `git checkout --orphan new_branch`.

2. Commit all files.

3. `git branch -D main`.

    > `-D` forces the deletion, because `main` is not merged into the orphan branch.

4. `git branch -m main`.

5. `git push -f origin main`.
