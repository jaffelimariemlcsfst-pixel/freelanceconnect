---
description: Dockerize the application components
---
# Dockerize Application

This workflow guides you through containerizing the Next.js frontend and FastAPI backend.

## Steps

1. **Create Backend Dockerfile**
   Prompt the agent to create a `Dockerfile` in the `backend/` directory:
   > "Create a Dockerfile for the FastAPI backend using a slim Python 3.11 image. Expose port 8000."

2. **Create Frontend Dockerfile**
   Prompt the agent to create a `Dockerfile` in the `frontend/` directory:
   > "Create a Dockerfile for the Next.js frontend. Use a multi-stage node:18-alpine build for smaller image size. Expose port 3000."

3. **Create Docker Compose Config**
   Prompt the agent to create a `docker-compose.yml` in the root directory:
   > "Create a docker-compose.yml file in the root that builds and runs both the backend and frontend services. Map the appropriate ports."

4. **Build and Run**
   Once the files are generated, use the following terminal command to start your containers:
   ```bash
   docker-compose up --build
   ```
