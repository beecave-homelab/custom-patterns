# Create Python Project

## Description

**`create_python_project` addresses the problem of maintaining consistent Python code structure and quality across projects.**

This pattern helps generate high-quality, production-ready Python scripts that strictly follow predefined templates and coding standards, ensuring modularity, maintainability, and error-free code.

## Required Files

This pattern relies on two essential files in the `context` directory:

1. **`boilerplate-example.md`** - A template Python script that demonstrates the expected structure, coding style, and best practices.
2. **`python-coding-standards.md`** - Comprehensive coding standards and guidelines that all generated Python code must follow.

These files serve as the foundation for generating consistent, high-quality Python code.

## Functionality

When you use `create_python_project`, it generates Python code with the following features:

- Strict adherence to provided boilerplate templates
- PEP8 compliance and best practices implementation
- Proper object-oriented programming structure
- Comprehensive documentation and comments
- Built-in error handling and testing capabilities

### Use cases

`create_python_project` output can help you in multiple ways, including:

1. **`Standardized Project Creation`
   Generate new Python scripts that follow consistent structure and coding standards across your organization.
2. **`Code Quality Assurance`
   Ensure all generated code meets production-ready standards with proper documentation, error handling, and testing.

## Usage

You can reference the `create_python_project` **system.md** content directly like so:

### **Pull the _system_ prompt directly**

```sh
curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/create_python_project/system.md
```

## Output

Here's an abridged output example from `create_python_project`.

```python
#!/usr/bin/env python3
"""
Module description and purpose.

Author: Your Name
Date: YYYY-MM-DD
"""

import logging
from typing import Optional, Dict

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

class MyClass:
    """Class description and purpose."""
    
    def __init__(self):
        """Initialize the class instance."""
        pass
    
    def process_data(self, data: Dict) -> Optional[Dict]:
        """
        Process the input data.
        
        Args:
            data: Input dictionary to process
            
        Returns:
            Processed data or None if processing fails
        """
        try:
            # Processing logic here
            return processed_data
        except Exception as e:
            logger.error(f"Error processing data: {e}")
            return None

if __name__ == "__main__":
    # Main execution logic
    pass
```

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 05-01-2024
