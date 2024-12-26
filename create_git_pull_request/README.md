# Create Git Pull Request

## Description

**`Create Git Pull Request` addresses the problem of generating standardized, comprehensive pull request documentation from git diff output**

This pattern helps developers create well-structured, detailed pull request documentation by analyzing git diff output and organizing changes into a clear, standardized format.

## Functionality

When you use `Create Git Pull Request`, it pulls the following content from the input:

- Git diff output showing changes between branches
- Added, modified, and deleted files
- Code changes and their descriptions
- Testing plans and impact analysis
- Commit types with standardized emojis

### Use cases

`Create Git Pull Request` output can help you in multiple ways, including:

1. **`Documentation Standardization`**
   Ensures all pull requests follow a consistent format with required sections for better review and documentation.
2. **`Change Analysis and Communication`**
   Helps developers clearly communicate the scope, impact, and testing of their changes to reviewers and team members.

## Usage

You can reference the `Create Git Pull Request` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/Create Git Pull Request/system.md
```

## Output

Here's an abridged output example from `Create Git Pull Request`.

````markdown
# Pull Request: Add User Authentication Feature

## Summary

This PR introduces user authentication functionality to achieve secure user access. It includes changes to auth controllers, middleware, and user models.

## Files Changed

### Added

1. **`auth/controller.js`**
   - New authentication controller implementation

### Modified

1. **`user/model.js`**
   - Added password hashing and validation methods

## Test Plan

1. **Unit Testing**
   - Added tests for auth controller methods
2. **Integration Testing**
   - Tested auth flow with database
3. **Manual Testing**
   - Verified login/logout functionality
````

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: Elvee
- **Version Information**: 1.0.0
- **Published**: 26-12-2024
