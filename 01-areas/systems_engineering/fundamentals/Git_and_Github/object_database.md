---
reviewed_on: 2026-09-22
---

# Object database

A Git repository is built on a content-addressed object database stored under `.git/objects`. Everything Git tracks, including commits, is an object in that database. Each object is identified by the hash of its own contents, which means the identifier is derived from the data rather than assigned.

Loose objects are laid out by splitting the hash: the first two hexadecimal characters become a directory name and the remaining characters become the file name inside it.

```
ls -al .git/objects/5b/
```

Object files are zlib-compressed, so reading them with `cat` produces binary noise. Inspection requires `git cat-file`, which belongs to the plumbing layer described in [[01-areas/systems_engineering/fundamentals/git_and_github/porcelain_and_plumbing_commands|porcelain and plumbing commands]].

## Related readings

- [[01-areas/systems_engineering/fundamentals/git_and_github/object_types|Object types]].

- [[01-areas/systems_engineering/fundamentals/git_and_github/why_do_repositories_stay_small|Why do repositories stay small?]]
