---
description: Add comprehensive comments and docstrings to code
---
# Commenter Skill

This skill is used to add clear, helpful comments and docstrings to code.

## Guidelines
- **Docstrings**: Add docstrings to all functions, classes, and modules following standard conventions (e.g., Google Style for Python).
- **Inline Comments**: Explain *why* something is done, not *what* is done (unless the logic is complex).
- **TODOs**: Mark incomplete or future work with `TODO(user): description`.
- **Clarity**: Use simple, precise language.

## Example
**Input:**
```python
def add(a, b):
    return a + b
```

**Output:**
```python
def add(a: int, b: int) -> int:
    """Adds two numbers together.

    Args:
        a: The first number.
        b: The second number.

    Returns:
        The sum of a and b.
    """
    return a + b
```
