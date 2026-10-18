---
reviewed_on: 2026-09-22
---

# Configuration

Git stores author information to track commit ownership across a project.

## Configuration scope precedence

Configuration settings are stored across four hierarchical scopes. More specific scopes override more general ones:

1. Worktree configuration in `.git/config.worktree` configures part of a project and overrides local settings.

2. Local configuration in `.git/config` configures a specific repository and overrides global settings.

3. Global configuration in `~/.gitconfig` configures all projects for a user and overrides system settings.

4. System configuration in `/etc/gitconfig` configures Git for all users on the system.

## Managing configuration values

Settings are stored as key and value pairs under specific section headers using the format `<section>.<keyname>`.

```bash
git config set --global user.name "<username>"
git config set --global user.email "<email>"
```

Subcommands handle reading, updating and removing configuration entries:

- The `set` subcommand adds or updates a value for a key.

- The `get` subcommand retrieves the value associated with a specified key.

- The `unset` subcommand removes a single instance of a specified key.

- The `unset --all` flag removes every duplicate instance of a specified key.

- The `remove-section` subcommand removes an entire configuration section.
