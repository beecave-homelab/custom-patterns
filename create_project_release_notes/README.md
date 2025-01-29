# Project Release Notes Generator

## Description

**`Project Release Notes Generator` addresses the problem of creating consistent and well-structured release notes from Git repository information**

This pattern analyzes Git commit history, categorizes changes, and formats them into clear, readable release notes that follow a standardized structure.

## Functionality

When you use `Project Release Notes Generator`, it pulls the following content from the input:

- Git commit history and changes between versions
- Tagged releases and associated commits
- Categorized changes (Features, Bug Fixes, Performance Improvements, etc.)
- Commit details including hashes, messages, and authors

### Use cases

`Project Release Notes Generator` output can help you in multiple ways, including:

1. **`Version Documentation`**
   Generate comprehensive documentation for each software release by automatically categorizing and formatting changes from Git history.
2. **`Change Tracking`**
   Maintain a clear record of all modifications, improvements, and fixes made to the project with proper categorization and traceability.

## Usage

You can reference the `Project Release Notes Generator` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_project_release_notes/system.md
```

## Output

Here's an abridged output example from `Project Release Notes Generator`.

```markdown
# Release Notes - Version 1.2.0 (15-01-2024)

Added new authentication features and fixed several critical bugs.

## Features ✨
- Implemented OAuth2 authentication support (a1b2c3d)
- Added user role management system (e4f5g6h)

## Bug Fixes 🐛
- Fixed user session timeout issue (i7j8k9l)
- Resolved data validation error in forms (m0n1o2p)

## Performance Improvements 🚀
- Optimized database queries for faster response times (q3r4s5t)

## Breaking Changes 🔥
- Updated authentication API endpoints (u6v7w8x)
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 29-01-2024
