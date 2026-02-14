---
description: Run code quality and linting checks
---
# Code Quality Check

This workflow ensures the codebase meets the workshop's coding standards by performing formatting and linting.

## Steps

1. **Run Backend Quality Checks (Python)**
   Prompt the agent to perform backend checks:
   > "Use `black` and `flake8` to format and check the Python code in the `backend/` directory. Fix any formatting issues you find."

2. **Run Frontend Quality Checks (JS/TS)**
   Prompt the agent to perform frontend checks:
   > "Run `npm run lint` inside the `frontend/` directory. Format the code using `prettier` to resolve any styling issues."

3. **Perform Refactoring**
   If the code smells or looks too complex, highlight the specific block of code and use the agent's refactoring skill:
   > Select the code and type: "/refactor-pro Please optimize this logic."
