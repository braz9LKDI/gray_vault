---
reviewed_on: 2026-09-24
---

# Merge and rebase

[[01-areas/systems_engineering/fundamentals/git_and_github/merge|Merging]] and [[01-areas/systems_engineering/fundamentals/git_and_github/rebase|rebasing]] are the two primary mechanisms for integrating changes from one branch into another. While both achieve the same functional outcome, they handle repository history differently.

## Merge

The `git merge` command combines two branches by preserving the exact chronological sequence of commits.

```bash
git switch main
git merge <feature-branch>
```

Before merge:

```text
      C feature
     /
A - B   main
```

After merge:

```text
A - B - C main
```

## Rebase

Rebasing rewrites commit history by moving the base of a feature branch onto another tip. Instead of combining two final states with a merge commit, rebasing individually reapplies each commit on top of the target branch, producing a linear progression.

```bash
git switch <feature-branch>
git rebase main
```

Before rebase:

```text
      C - D feature
     /
A - B - E   main
```

After rebase:

```text
A - B - E - C' - D'   main
```


# Comparison

Choosing between merging and rebasing depends on history management preferences:

- Merging preserves complete historical truth, chronological sequence and exact branch topology at the cost of a cluttered commit log.

- Rebasing creates a linear, cleaner history that simplifies commit traversal and debugging tools like `git bisect` at the cost of rewriting commit metadata.
