# Boilerplate Example

## Description

This is a sample Python script demonstrating best practices for readability, maintainability,
and efficiency, following PEP8 guidelines and leveraging Python's advanced features.

## Code

```python
#!/usr/bin/env python3
"""
boilerplate-example.py

A sample Python script demonstrating best practices for readability, maintainability,
and efficiency, following PEP8 guidelines and leveraging Python's advanced features.

Author: elvee
Date: 16-11-2024
"""

# [Leveraging the Python Ecosystem: Use the PyPI Instead of Doing It Yourself]
# [Efficient Coding Practices: Count Hashable Objects with collections.Counter]
# [Advanced Python Features: Type Hints]
import sys
from collections import Counter
from typing import List, Dict, Any

# Constants
# [Use the Right Data Structures: Store Unique Values with Sets]
SUPPORTED_OPERATIONS = {'add', 'remove', 'list', 'count'}


# [Write Object-Oriented Code]
class TaskManager:
    """A class to manage a list of tasks."""

    # [Follow Style Guidelines: Type Hints and Default Values]
    def __init__(self, tasks: List[str] = None):
        """
        Initialize the TaskManager with an optional list of tasks.

        Args:
            tasks (List[str], optional): Initial list of tasks. Defaults to None.
        """
        # [Use Default Values in Dictionaries with .get() and .setdefault()]
        self.tasks = tasks if tasks is not None else []

    # [Use the Right Data Structures: List for ordered tasks]
    # [Format Strings with f-Strings]
    def add_task(self, task: str) -> None:
        """
        Add a new task to the task list.

        Args:
            task (str): The task description to add.
        """
        self.tasks.append(task)
        print(f"Task added: {task}")

    # [Efficient Coding Practices: Simplify if-Statements]
    # [Format Strings with f-Strings]
    # [Debugging and Error Handling: Do Not Suppress Exceptions]
    def remove_task(self, task: str) -> None:
        """
        Remove a task from the task list.

        Args:
            task (str): The task description to remove.

        Raises:
            ValueError: If the task is not found in the list.
        """
        try:
            self.tasks.remove(task)
            print(f"Task removed: {task}")
        except ValueError:
            print(f"Error: Task '{task}' not found.")
            raise

    # [Efficient Coding Practices: Iterate with enumerate()]
    # [Format Strings with f-Strings]
    # [Write Readable Code]
    def list_tasks(self) -> None:
        """List all current tasks."""
        if not self.tasks:
            print("No tasks available.")
            return
        for index, task in enumerate(self.tasks, start=1):
            print(f"{index}. {task}")

    # [Use List Comprehensions Instead of Raw For-Loops]
    def count_tasks_by_keyword(self, keyword: str) -> int:
        """
        Count the number of tasks containing a specific keyword.

        Args:
            keyword (str): The keyword to search for in tasks.

        Returns:
            int: The count of tasks containing the keyword.
        """
        return sum(1 for task in self.tasks if keyword.lower() in task.lower())

    # [Use List Comprehensions]
    # [Count Hashable Objects with collections.Counter]
    # [Avoid Division by Zero]
    # [Use Conditional Expressions]
    def get_task_statistics(self) -> Dict[str, Any]:
        """
        Get statistics about the current tasks.

        Returns:
            Dict[str, Any]: A dictionary containing task statistics.
        """
        task_lengths = [len(task) for task in self.tasks]
        most_common_word = Counter(
            word.lower() for task in self.tasks for word in task.split()
        ).most_common(1)
        return {
            'total_tasks': len(self.tasks),
            'average_length': sum(task_lengths) / len(task_lengths) if task_lengths else 0,
            'most_common_word': most_common_word[0][0] if most_common_word else None
        }


# [Writing Readable and Maintainable Code: Parse Command-Line Arguments]
# [Simplify if-Statements]
# [Create Readable Documentation]
# [Debugging and Error Handling: Correct Broken Code Immediately]
# [Use Conditional Expressions]
def parse_arguments(args: List[str]) -> Dict[str, Any]:
    """
    Parse command-line arguments.

    Args:
        args (List[str]): The list of command-line arguments.

    Returns:
        Dict[str, Any]: A dictionary of parsed arguments.
    """
    if len(args) < 2:
        print("Usage: python example.py [add|remove|list|count] [task]")
        sys.exit(1)

    operation = args[1].lower()
    if operation not in SUPPORTED_OPERATIONS:
        print(f"Error: Unsupported operation '{operation}'. Supported operations are: {', '.join(SUPPORTED_OPERATIONS)}.")
        sys.exit(1)

    task = ' '.join(args[2:]) if len(args) > 2 else None
    return {'operation': operation, 'task': task}


# [Write Readable and Maintainable Code: Main Function]
# [Object-Oriented Programming]
# [Simplify if-Statements]
# [Create Readable Documentation]
# [Format Strings with f-Strings]
# [Debugging and Error Handling: Specific Exceptions]
def main():
    """Main function to execute the TaskManager based on command-line arguments."""
    args = parse_arguments(sys.argv)
    manager = TaskManager()

    operation = args['operation']
    task = args['task']

    try:
        if operation == 'add':
            if not task:
                print("Error: No task provided to add.")
                sys.exit(1)
            manager.add_task(task)
        elif operation == 'remove':
            if not task:
                print("Error: No task provided to remove.")
                sys.exit(1)
            manager.remove_task(task)
        elif operation == 'list':
            manager.list_tasks()
        elif operation == 'count':
            if not task:
                print("Error: No keyword provided to count.")
                sys.exit(1)
            count = manager.count_tasks_by_keyword(task)
            print(f"Number of tasks containing '{task}': {count}")
    except ValueError as e:
        print(f"An error occurred: {e}")
        sys.exit(1)

    # Display task statistics
    stats = manager.get_task_statistics()
    print(f"Total tasks: {stats['total_tasks']}")
    print(f"Average task length: {stats['average_length']:.2f} characters")
    if stats['most_common_word']:
        print(f"Most common word in tasks: {stats['most_common_word']}")


# [Main Guard: Ensures script runs only when executed directly]
if __name__ == '__main__':
    main()
```
