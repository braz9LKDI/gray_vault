---
type: reference
status: draft
---

# Commit message conventions

```text
<type>[(<scope>)]: <short-summary>

[<body>]
```

## Types

The type says what kind of change a commit makes:

- `feat`: new feature.

- `fix`: bug fix.

- `docs`: documentation only.

- `style`: formatting (no logic change).

- `perf`: performance improvement.

- `test`: new or corrected tests.

- `build`: build system or external dependencies.

- `chore`: maintenance tasks that neither add a user-facing feature (`feat`) nor fix a user-facing bug (`fix`). They are usually internal.

    > "Keeping the project healthy".

- `revert`: revert a commit.

## Scopes

The scope says where the change happened, while the type stays generic:

### Code areas

- `api`: the "edge" of the app that receives requests and returns responses.

    > Routes, controllers, request handlers and endpoint definitions.

- `service`: business logic orchestration, code that coordinates rules and calls other modules.

    > Service classes/functions that call repositories and validators.

- `core`: shared utilities used across many modules, not specific to one feature.

    > Helpers, shared types and error classes.

- `config`: application configuration and environment setup.

- `db`: database access and schema changes.

- `auth`: login security rules and permission checks.

    > Middleware/filters, token validation and roles/permissions.

- `ui`: frontend components and user interactions.

### Quality and maintenance

- `test`: test suites and test helpers.

- `docs`: documentation files.

- `lint`: linting/formatting config.

- `deps`: dependency updates.

- `build`: build scripts and packaging.

- `ci`: pipelines/workflows.

- `release`: version bumps and changelogs.
