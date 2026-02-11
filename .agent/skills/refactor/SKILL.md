---
name: refactor-pro
description: Reviews and refactors code. Use when code is complex, redundant, or needs optimization.
---

# Refactor Pro Skill

Look for opportunities to improve code quality without changing external behavior.

## What to Look For
- **DRY (Don't Repeat Yourself)**: Identify duplicate logic that can be extracted into functions.
- **Complexity**: Identify deeply nested loops or conditionals.
- **Modern Syntax**: Suggest modern language features (e.g., Optional Chaining in JS, List Comprehensions in Python).
- **Performance**: Spot O(n^2) operations that could be O(n) using HashMaps/Sets.

## Refactoring Workflow
1. Explain the "code smell" or issue identified.
2. Propose the refactored code block.
3. Explain the benefits of the new approach (e.g., "reduces cognitive load," "improves lookup time").
4. Ensure existing tests still pass.