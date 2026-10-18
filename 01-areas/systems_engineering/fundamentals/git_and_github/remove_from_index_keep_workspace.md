---
type: howto
status: draft
---

# Remove from index keeping workspace

```bash
git rm --cached <file>
```

> To stop tracking every file under the current directory, use `git rm -r --cached .`.
>
> Without `--cached`, the file is also removed from the workspace.
