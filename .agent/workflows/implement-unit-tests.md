---
description: Implement and run unit tests for the application
---
# Implement Unit Tests

This workflow establishes a unit testing foundation for both the backend (pytest) and frontend (Jest/Vitest).

## Steps

1. **Setup Backend Tests**
   Prompt the agent to generate backend tests:
   > "Install `pytest` and `httpx` in the `backend/` directory. Create a `tests/` folder and write a basic unit test for the main FastAPI endpoints."

2. **Setup Frontend Tests**
   Prompt the agent to generate frontend tests:
   > "Install `jest` and React Testing Library in the `frontend/` directory. Create a basic component test for the Next.js home page."

3. **Run Backend Tests**
   Run the following command in the terminal:
   ```bash
   cd backend
   pytest
   ```

4. **Run Frontend Tests**
   Run the following command in the terminal:
   ```bash
   cd frontend
   npm run test
   ```
