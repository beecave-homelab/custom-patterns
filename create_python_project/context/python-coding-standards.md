# Python Coding Standards

## One Sentence Summary

This guide provides comprehensive best practices for Python programming, covering code readability, efficient coding techniques, project structure, and leveraging Python's features for writing clean, maintainable, and professional code.

## Table of Contents

1. [Introduction](#introduction)
2. [Setting Up a Python Project Repository](#setting-up-a-python-project-repository)
   - [Create a Code Repository and Implement Version Control](#create-a-code-repository-and-implement-version-control)
   - [Project Structure Best Practices](#project-structure-best-practices)
   - [Use Virtual Environments](#use-virtual-environments)
3. [Writing Readable and Maintainable Code](#writing-readable-and-maintainable-code)
   - [Follow Style Guidelines (PEP8)](#follow-style-guidelines-pep8)
   - [Write Readable Code](#write-readable-code)
   - [Create Readable Documentation](#create-readable-documentation)
   - [The Zen of Python](#the-zen-of-python)
4. [Efficient Coding Practices](#efficient-coding-practices)
   - [Iterate with `enumerate()` Instead of `range(len())`](#iterate-with-enumerate-instead-of-rangelen)
   - [Use List Comprehensions Instead of Raw For-Loops](#use-list-comprehensions-instead-of-raw-for-loops)
   - [Use the Right Data Structures](#use-the-right-data-structures)
   - [Sort Complex Iterables with `sorted()`](#sort-complex-iterables-with-sorted)
   - [Store Unique Values with Sets](#store-unique-values-with-sets)
   - [Save Memory with Generators](#save-memory-with-generators)
   - [Define Default Values in Dictionaries with `.get()` and `.setdefault()`](#define-default-values-in-dictionaries-with-get-and-setdefault)
   - [Count Hashable Objects with `collections.Counter`](#count-hashable-objects-with-collectionscounter)
   - [Concatenate Strings with `.join()`](#concatenate-strings-with-join)
   - [Merge Dictionaries with the `**` Operator (Python 3.5+)](#merge-dictionaries-with-the--operator-python-35)
   - [Simplify if-Statements with `if x in list`](#simplify-if-statements-with-if-x-in-list)
5. [Advanced Python Features](#advanced-python-features)
   - [Write Object-Oriented Code](#write-object-oriented-code)
   - [Format Strings with f-Strings (Python 3.6+)](#format-strings-with-f-strings-python-36)
6. [Leveraging the Python Ecosystem](#leveraging-the-python-ecosystem)
   - [Use the PyPI Instead of Doing It Yourself](#use-the-pypi-instead-of-doing-it-yourself)
7. [Debugging and Error Handling](#debugging-and-error-handling)
   - [Correct Broken Code Immediately](#correct-broken-code-immediately)
   - [What Not to Do While Programming in Python](#what-not-to-do-while-programming-in-python)
8. [Conclusion](#conclusion)

## Introduction

Writing Pythonic code not only enhances readability and maintainability but also leverages the full potential of Python's features for efficient and clean programming. This guide consolidates essential best practices and coding standards every Python developer should follow to produce professional and robust code.

## Setting Up a Python Project Repository

### Create a Code Repository and Implement Version Control

- **Use Version Control Systems (VCS):** Start by creating a code repository using systems like Git. Version control tracks changes, facilitates collaboration, and maintains code history.
- **Platforms:** Host your repository on platforms like GitHub, GitLab, or Bitbucket to enable collaboration and backup.

### Project Structure Best Practices

- **Organize Your Project:**
  - **Root Directory:** Contains the main package directory, a `README.md`, `setup.py` (if packaging), and configuration files.
  - **Package Directory:** Holds your Python modules (`.py` files) and an `__init__.py` file.
  - **Tests Directory:** Contains all your tests, often mirroring the structure of your package directory.
  - **Documentation:** Include a `docs/` directory for project documentation.
- **Example Structure:**

  ```markdown
  my_project/
  ├── my_package/
  │   ├── __init__.py
  │   ├── module1.py
  │   └── module2.py
  ├── tests/
  │   ├── __init__.py
  │   ├── test_module1.py
  │   └── test_module2.py
  ├── README.md
  ├── requirements.txt
  ├── setup.py
  └── docs/
      └── ...
  ```

- **Critical Files:**
  - **`README.md`:** Provides an overview of the project, installation instructions, and usage examples.
  - **`requirements.txt`:** Lists all dependencies required by your project.
  - **`setup.py`:** Script for installing your package and its dependencies.

### Use Virtual Environments

- **Isolate Project Dependencies:** Use virtual environments to create isolated spaces for project-specific dependencies, avoiding conflicts between packages.
- **Tools:**
  - **venv (Python 3):** Built-in module for creating virtual environments.

    ```bash
    python3 -m venv env
    source env/bin/activate
    ```

  - **virtualenv:** Third-party tool for Python 2 and 3.

    ```bash
    virtualenv env
    source env/bin/activate
    ```

  - **Conda:** An alternative package and environment manager.

    ```bash
    conda create -n myenv python=3.8
    conda activate myenv
    ```

## Writing Readable and Maintainable Code

### Follow Style Guidelines (PEP8)

- **Adopt PEP8 Standards:** Follow the Python Enhancement Proposal 8 (PEP8) for style guidelines to ensure consistent and readable code.
- **Key Conventions:**
  - **Indentation:** Use 4 spaces per indentation level. Do not use tabs.
  - **Line Length:** Limit lines to 79 characters for code and 72 for comments.
  - **Naming Conventions:**
    - **Variables and Functions:** `lower_case_with_underscores`
    - **Classes:** `CapWords` (PascalCase)
    - **Constants:** `UPPER_CASE_WITH_UNDERSCORES`
  - **Spacing:** Use spaces around operators and after commas, but not directly inside brackets, parentheses, or braces.
- **Automatic Formatting Tools:**
  - **Black:** An opinionated code formatter.

    ```bash
    black your_code.py
    ```

  - **Flake8:** For style guide enforcement.

    ```bash
    flake8 your_code.py
    ```

### Write Readable Code

- **Use Meaningful Names:** Choose descriptive names for variables, functions, and classes that convey their purpose.

  ```python
  # Good
  total_price = item_quantity * item_price

  # Bad
  tp = iq * ip
  ```

- **Comment Wisely:** Add comments to explain the 'why' behind complex code segments.

  ```python
  # Adjust price for inflation
  adjusted_price = base_price * inflation_rate
  ```

- **Avoid Complexity:** Break down complex functions into smaller, reusable functions.
- **Use Line Breaks and White Space:** Separate logical sections of code with blank lines.

### Create Readable Documentation

- **Docstrings:** Use triple-quoted strings at the beginning of modules, classes, and functions to describe their purpose.

  ```python
  def calculate_area(radius):
      """Calculate the area of a circle given its radius."""
      return math.pi * radius ** 2
  ```

- **Documentation Tools:** Utilize Sphinx or MkDocs to generate documentation from docstrings.
  - **Sphinx Example:**

    ```bash
    sphinx-quickstart
    ```

- **Markdown Files:** Use `README.md` for project overview and `CONTRIBUTING.md` for contribution guidelines.

### The Zen of Python

- **Guiding Principles:** The Zen of Python, accessible via `import this`, provides aphorisms that emphasize simplicity, readability, and practicality.
- **Key Aphorisms:**
  - **Beautiful is better than ugly.**
  - **Explicit is better than implicit.**
  - **Simple is better than complex.**
  - **Readability counts.**
  - **There should be one— and preferably only one —obvious way to do it.**

## Efficient Coding Practices

### Iterate with `enumerate()` Instead of `range(len())`

- **Enhanced Readability:** Use `enumerate()` to get both the index and the item when iterating over a sequence.

  ```python
  for index, value in enumerate(my_list):
      print(f"Index: {index}, Value: {value}")
  ```

- **Avoids Errors:** Prevents off-by-one errors and makes the code cleaner.

### Use List Comprehensions Instead of Raw For-Loops

- **Concise and Efficient:** List comprehensions provide a compact way to create lists.

  ```python
  # Using a for-loop
  squares = []
  for x in range(10):
      squares.append(x**2)

  # Using a list comprehension
  squares = [x**2 for x in range(10)]
  ```

- **Supports Conditional Logic:**

  ```python
  even_squares = [x**2 for x in range(10) if x % 2 == 0]
  ```

### Use the Right Data Structures

- **Optimize Performance:** Choose data structures that best suit the task.
  - **List:** Ordered, mutable sequences.
  - **Tuple:** Ordered, immutable sequences.
  - **Set:** Unordered collections of unique elements.
  - **Dictionary:** Unordered collections of key-value pairs.
- **Example:**

  ```python
  # Use a set for membership testing
  if item in items_set:
      process(item)
  ```

### Sort Complex Iterables with `sorted()`

- **Custom Sorting:** Use the `key` parameter for custom sorting criteria.

  ```python
  sorted_users = sorted(users, key=lambda user: user.age)
  ```

- **Reverse Sorting:**

  ```python
  sorted_users = sorted(users, key=lambda user: user.age, reverse=True)
  ```

### Store Unique Values with Sets

- **Eliminate Duplicates:** Sets automatically remove duplicate entries.

  ```python
  unique_items = set(items_list)
  ```

- **Efficient Membership Tests:**

  ```python
  if value in unique_items:
      print("Value exists")
  ```

### Save Memory with Generators

- **Lazy Evaluation:** Generators yield items one at a time and are memory-efficient.

  ```python
  def read_large_file(file_name):
      with open(file_name) as file:
          for line in file:
              yield line
  ```

- **Generator Expressions:**

  ```python
  squares = (x**2 for x in range(1000000))
  ```

### Define Default Values in Dictionaries with `.get()` and `.setdefault()`

- **Avoid KeyErrors with `.get()`:**

  ```python
  value = my_dict.get('key', default_value)
  ```

- **Initialize and Retrieve with `.setdefault()`:**

  ```python
  value = my_dict.setdefault('key', default_value)
  ```

### Count Hashable Objects with `collections.Counter`

- **Efficient Counting:**

  ```python
  from collections import Counter
  word_counts = Counter(words_list)
  ```

- **Most Common Elements:**

  ```python
  most_common = word_counts.most_common(5)
  ```

### Concatenate Strings with `.join()`

- **Efficient Concatenation:**

  ```python
  sentence = ' '.join(words_list)
  ```

- **Avoids Inefficient String Addition:**

  ```python
  # Inefficient
  sentence = ''
  for word in words_list:
      sentence += word + ' '
  ```

### Merge Dictionaries with the `**` Operator (Python 3.5+)

- **Elegant Merging:**

  ```python
  combined_dict = {**dict_a, **dict_b}
  ```

- **For Earlier Versions (Python < 3.5):**

  ```python
  combined_dict = dict_a.copy()
  combined_dict.update(dict_b)
  ```

### Simplify if-Statements with `if x in list`

- **Cleaner Conditionals:**

  ```python
  if color in ['red', 'green', 'blue']:
      print("It's a primary color.")
  ```

- **Use Sets for Large Membership Tests:**

  ```python
  valid_items = set(large_list)
  if item in valid_items:
      process(item)
  ```

## Advanced Python Features

### Write Object-Oriented Code

- **Modular and Reusable:**

  ```python
  class Vehicle:
      def __init__(self, make, model):
          self.make = make
          self.model = model

      def drive(self):
          print(f"The {self.make} {self.model} is driving.")

  class Car(Vehicle):
      def __init__(self, make, model, doors):
          super().__init__(make, model)
          self.doors = doors
  ```

- **Encapsulation:** Group related variables and functions together.

### Format Strings with f-Strings (Python 3.6+)

- **Readable Formatting:**

  ```python
  name = 'Alice'
  age = 30
  greeting = f'Hello, {name}. You are {age} years old.'
  ```

- **Expressions Inside Strings:**

  ```python
  result = f'{4 * 10}'
  # Result: '40'
  ```

## Leveraging the Python Ecosystem

### Use the PyPI Instead of Doing It Yourself

- **Reuse Existing Libraries:**
  - **Install Packages:**

    ```bash
    pip install requests
    ```

  - **Examples of Useful Packages:**
    - **requests:** For HTTP requests.
    - **numpy:** For numerical computations.
    - **pandas:** For data analysis.
- **Benefits:**
  - Saves development time.
  - Community-tested and maintained.
  - Focus on solving unique problems.

## Debugging and Error Handling

### Correct Broken Code Immediately

- **Prompt Bug Fixes:** Fix errors as soon as they are identified to prevent cascading issues.
- **Use Debuggers:**
  - **pdb Module:**

    ```python
    import pdb
    pdb.set_trace()
    ```

- **Write Tests:**
  - **Use unittest or pytest frameworks to write test cases.**

### What Not to Do While Programming in Python

- **Avoid Wildcard Imports:**

  ```python
  # Don't do this
  from module import *

  # Do this instead
  from module import specific_function
  ```

- **Do Not Modify `sys.path` Manually:** Use proper packaging and installation methods.
- **Avoid Using Mutable Default Arguments:**

  ```python
  # Bad
  def func(default_list=[]):
      pass

  # Good
  def func(default_list=None):
      if default_list is None:
          default_list = []
  ```

- **Do Not Suppress Exceptions Without Handling:**

  ```python
  # Bad
  try:
      risky_operation()
  except:
      pass

  # Good
  try:
      risky_operation()
  except SpecificException as e:
      handle_exception(e)
  ```

## Conclusion

By adhering to these best practices, Python developers can write code that is efficient, readable, and maintainable. A well-structured project, combined with the use of Python's powerful features and a disciplined coding style, ensures that codebases are robust and professional. Leveraging existing libraries and tools from the Python ecosystem further enhances productivity and code quality.
