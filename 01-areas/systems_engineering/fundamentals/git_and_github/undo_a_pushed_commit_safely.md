---
type: howto
status: draft
---

# Undo a pushed commit safely

```bash
git revert HEAD
```

This creates a new commit that reverses the last commit.

> This is safer than `git reset` when the original commit has already been pushed.
