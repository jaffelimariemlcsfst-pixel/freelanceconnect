# 3. Create Triggers

We need to create two triggers: one for the backend and one for the frontend.

### A. Create Backend Trigger

1.  In the **Cloud Build > Triggers** page, click **Create Trigger**.
2.  **Name**: `backend-trigger`
3.  **Event**: Push to a branch
4.  **Source**:
    -   **Repository**: Select your connected repository.
    -   **Branch**: `^main$` (or your default branch).
5.  **Configuration**:
    -   **Type**: Cloud Build configuration file (yaml or json).
    -   **Location**: `Repository`
    -   **Cloud Build configuration file location**: `backend/cloudbuild.yaml`
6.  Click **Create**.

### B. Create Frontend Trigger

1.  Click **Create Trigger** again.
2.  **Name**: `frontend-trigger`
3.  **Event**: Push to a branch
4.  **Source**:
    -   **Repository**: Select your connected repository.
    -   **Branch**: `^main$`
5.  **Configuration**:
    -   **Type**: Cloud Build configuration file (yaml or json).
    -   **Location**: `Repository`
    -   **Cloud Build configuration file location**: `frontend/cloudbuild.yaml`
6.  Click **Create**.

---

[Next: Trigger Deployment](./04-trigger-deployment.md)
