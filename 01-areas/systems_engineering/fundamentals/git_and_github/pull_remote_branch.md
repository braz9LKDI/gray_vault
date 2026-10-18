---
type: howto
status: draft
---

# Check out a remote branch locally

1. `git fetch <remote-source>`.

2. `git switch <branch-name>`.

> If the branch exists on the remote but not locally, Git will usually create a local tracking branch automatically.
>
> Explicit form: `git switch -c <branch-name> --track origin/<branch-name>`.
