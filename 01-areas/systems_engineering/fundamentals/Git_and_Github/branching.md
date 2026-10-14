---
reviewed_on: 2026-09-22
---

# Branching

Branches isolate changes to allow safe experimentation without affecting the primary codebase. Main is the standard default branch name when working with GitHub.

## Creating and switching branches

Branch creation and navigation are managed through `git branch` and `git switch` commands:

```bash
git branch <branch-name>
```

This command creates a new branch based on the current commit without changing the active branch.

```bash
git switch <branch-name>
```

This command switches the active working directory to an existing branch.

```bash
git switch -c <branch-name>
```

This command creates a new branch from the current commit and switches to it in one step.

The `git switch` command is preferred over `git checkout` for branch navigation because it is purpose-built for that task.
