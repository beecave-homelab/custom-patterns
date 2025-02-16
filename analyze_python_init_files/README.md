# analyze_python_init_files

## Description

**`analyze_python_init_files` addresses the problem of maintaining consistent function visibility and naming conventions across Python packages**

This pattern analyzes Python package structures to identify and manage function visibility, ensuring proper internal/public function naming, and maintaining consistent imports across the codebase.

## Functionality

When you use `analyze_python_init_files`, it pulls the following content from the input:

- Python files in the package directory and subdirectories
- Function definitions and their usage patterns
- Import statements and function references
- Current visibility status (public/internal) of functions

### Use cases

`analyze_python_init_files` output can help you in multiple ways, including:

1. **`Package API Consistency`**
   Ensure that your package's public API is clearly defined and that internal functions are properly marked with underscore prefixes.
2. **`Import Statement Management`**
   Maintain consistent and correct import statements across your codebase when function visibility changes.

## Usage

You can reference the `analyze_python_init_files` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/analyze_python_init_files/system.md
```

## Output

Here's an abridged output example from `analyze_python_init_files`.

```markdown
# Analysis Summary

- Scanned 15 Python files.
- Identified 42 function definitions.
- Marked 12 functions as internal.
- Renamed 5 functions to follow internal naming conventions.
- Updated 9 import statements across the package.

## Modified Functions
- `data_loader() → _data_loader()`
- `process_results() → _process_results()`
- `compute_metrics() → _compute_metrics()`

## Updated Imports
- `from mypkg.utils import data_loader` → `from mypkg.utils import _data_loader`
- `from mypkg.analysis import process_results` → `from mypkg.analysis import _process_results`
```

This allows you to quickly extract what's valuable and meaningful from the content for the use cases above.

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 16-02-2024
