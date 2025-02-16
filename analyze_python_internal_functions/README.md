# analyze_python_internal_functions

A tool for analyzing Python package structures to identify and properly mark internal functions with underscore prefixes while maintaining codebase consistency.

## Overview

This tool scans Python packages to identify functions that should be marked as internal, renames them appropriately with underscore prefixes, and updates all corresponding imports throughout the codebase.

## Features

- Recursive directory scanning for Python files
- Function visibility analysis
- Automatic internal function renaming
- Import statement updates
- Comprehensive reporting

## How It Works

The tool follows these steps:

1. **Directory Scanning**
   - Scans the target package directory and all subdirectories
   - Identifies all Python (`.py`) files
   - Creates a comprehensive file inventory

2. **Function Analysis**
   - Reads and parses each Python file
   - Extracts all function definitions
   - Analyzes function usage patterns
   - Determines intended visibility (public vs. internal)

3. **Function Renaming**
   - Identifies functions that should be internal
   - Adds underscore prefix to internal function names
   - Maintains code consistency

4. **Import Updates**
   - Scans codebase for affected imports
   - Updates import statements to match new function names
   - Ensures all references remain valid

5. **Reporting**
   - Generates detailed summary of changes
   - Lists modified functions
   - Documents import updates
   - Highlights potential issues

## Usage

1. Point the tool to your Python package directory
2. Review the analysis report
3. Apply suggested changes
4. Verify codebase integrity

## Output Example

```markdown
# Analysis Summary

- Scanned: 15 Python files
- Functions identified: 42
- Internal functions marked: 12
- Renamed functions: 5
- Updated imports: 9

## Modified Functions

- `data_loader() → _data_loader()`
- `process_results() → _process_results()`
- `compute_metrics() → _compute_metrics()`

## Updated Imports

- `from mypkg.utils import data_loader` → `from mypkg.utils import _data_loader`
- `from mypkg.analysis import process_results` → `from mypkg.analysis import _process_results`
```

## Best Practices

- Functions used only within a module should be marked internal
- Functions used across modules but not in `__init__.py` may be internal
- Explicitly documented API functions should remain public
- Existing underscore-prefixed functions should stay internal

## Validation

The tool includes validation steps:

- Static analysis checks
- Import verification
- Function reference validation
- Optional unit test execution
