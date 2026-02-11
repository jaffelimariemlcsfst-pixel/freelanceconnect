---
description: Generate unit tests for code
---
# Tester Skill

This skill is designed to help you write robust unit tests for your application.

## Guidelines
- **Frameworks**:
    - **Python**: Use `pytest`.
    - **JavaScript/TypeScript**: Use `jest` or `vitest`.
- **Coverage**: Aim to test both success paths and error cases.
- **Mocking**: Mock external services (e.g., database, API calls) to keep tests fast and isolated.
- **Naming**: Use descriptive test names (e.g., `test_calculate_total_returns_correct_sum`).

## Example (Python)
**Code:**
```python
def divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b
```

**Test:**
```python
import pytest
from mymodule import divide

def test_divide_success():
    assert divide(10, 2) == 5

def test_divide_by_zero():
    with pytest.raises(ValueError, match="Cannot divide by zero"):
        divide(10, 0)
```
