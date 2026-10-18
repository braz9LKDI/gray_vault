---
type: concept
status: draft
---

# Why do repositories stay small?

Git stores a complete snapshot of the tracked files at every commit. This is surprising, since commits are usually presented through diffs, but the diff is computed on demand by comparing two snapshots rather than being the thing that was stored.

Two mechanisms keep the object database from growing without bound.

1. Deduplication: because an object's name is the hash of its contents, identical contents produce the same object. A file that does not change between commits is stored once, and the same applies to two identical files anywhere in the repository.

2. Packing and compression: individual objects are zlib-compressed, and `git gc` later rewrites loose objects into packfiles where similar objects are stored as deltas against one another.

A practical consequence of packing is that `.git/objects/XX/` may look empty even though the objects still exist, because they have been moved into `.git/objects/pack/`.

## Related readings

- [[01-areas/systems_engineering/fundamentals/git_and_github/object_database|Object database]].

- [[01-areas/systems_engineering/fundamentals/git_and_github/object_types|Object types]].
