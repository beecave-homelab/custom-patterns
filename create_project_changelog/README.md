# Project Changelog Generator

## Description

**`Project Changelog Generator` addresses the problem of maintaining consistent and organized documentation of project changes through Git commit history.**

This pattern automatically generates well-structured changelogs by extracting commit history, categorizing changes, and formatting them in a standardized way.

## Functionality

When you use `Project Changelog Generator`, it pulls the following content from the input:

- Git commit messages with hashes and authors
- Commit categorization based on conventional commit types
- Version tags and dates
- Author information for releases

### Use cases

`Project Changelog Generator` output can help you in multiple ways, including:

1. **`Automated Release Documentation`**
   Automatically generate comprehensive changelogs for each release by processing Git commit history and organizing changes into meaningful categories.
2. **`Change Tracking and Traceability`**
   Maintain a clear record of all project changes with commit hashes for reference, making it easy to track the evolution of your project and investigate specific changes.

## Usage

You can reference the `Project Changelog Generator` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_project_changelog/system.md
```

## Output

Here's an abridged output example from `Project Changelog Generator`.

```markdown
## [1.2.0] - 15-02-2024

### Added
- Add user authentication system (a1b2c3d)
- Implement email notifications (e4f5g6h)

### Changed
- Update database schema for better performance (i7j8k9l)
- Refactor user management module (m0n1o2p)

### Fixed
- Fix login page validation bug (q3r4s5t)
- Resolve memory leak in background jobs (u6v7w8x)

### Removed
- Remove deprecated API endpoints (y9z0a1b)
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Additional Information

### Categories

The generator organizes commits into the following categories:

#### Added

- Features and enhancements (`feat ✨`)

#### Changed

- Performance Improvements (`perf 🚀`)
- Breaking Changes (`breaking 🔥`)
- Code Style Changes (`style 💎`)
- Refactoring (`refactor ♻️`)
- Documentation Updates (`docs 📝`)
- Chores (`chore 📦`)

#### Fixed

- Bug Fixes (`fix 🐛`)
- Tests (`test 🧪`)

#### Removed

- Reverted Changes (`revert ⏪`)

### Git Commands Used

```bash
# Get commit history (all or last 20)
git log --pretty=format:"%h - %s (%an)" --no-merges | cat
git log --pretty=format:"%h - %s (%an)" --no-merges -n 20 | cat

# Get author and date information
git log -1 --format="%an <%ae>"
git log -1 --format="%ad" --date=short

# Get latest version tag
git describe --tags --abbrev=0
```

### Best Practices

1. Use conventional commit messages to ensure accurate categorization
2. Include relevant commit hashes for reference
3. Keep descriptions concise but informative
4. Maintain consistent formatting
5. Review generated entries for accuracy

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 29-01-2024
