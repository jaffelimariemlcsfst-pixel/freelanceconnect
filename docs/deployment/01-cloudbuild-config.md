# 1. Create Cloud Build Configuration

To automate deployments, we will use **Cloud Build**. You need to create a configuration file (`cloudbuild.yaml`) in each of your application folders (`backend/` and `frontend/`).

### Step 1: Create `backend/cloudbuild.yaml`

Create a file named `cloudbuild.yaml` inside your `backend` folder with the following content:

```yaml
steps:
  # 1. Build the Docker image
  - name: 'gcr.io/cloud-builders/docker'
    entrypoint: 'bash'
    args:
      - '-c'
      - |
        docker build -t REGION-docker.pkg.dev/PROJECT_ID/REPO/IMAGE_NAME:${SHORT_SHA} .

  # 2. Push the Docker image to Artifact Registry
  - name: 'gcr.io/cloud-builders/docker'
    entrypoint: 'bash'
    args:
      - '-c'
      - |
        docker push REGION-docker.pkg.dev/PROJECT_ID/REPO/IMAGE_NAME:${SHORT_SHA}

  # 3. Deploy to Cloud Run
  - name: 'gcr.io/google.com/cloudsdktool/cloud-sdk'
    entrypoint: 'bash'
    args:
      - '-c'
      - |
        gcloud run services update SERVICE_NAME \
          --image REGION-docker.pkg.dev/PROJECT_ID/REPO/IMAGE_NAME:${SHORT_SHA} \
          --region REGION
```

**⚠️ Important:** Replace the placeholders:
- `REGION`: Your Google Cloud region (e.g., `us-central1`).
- `PROJECT_ID`: Your Google Cloud Project ID.
- `REPO`: Your Artifact Registry repository name.
- `IMAGE_NAME`: A name for your container image (e.g., `backend-image`).
- `SERVICE_NAME`: The name of your Cloud Run service (e.g., `backend-service`).

### Step 2: Create `frontend/cloudbuild.yaml`

Repeat the same process for the `frontend` folder. Create `frontend/cloudbuild.yaml` with the same content but update `IMAGE_NAME` and `SERVICE_NAME` to reflect the frontend application (e.g., `frontend-image`, `frontend-service`).

---

[Next: Connect GitHub Repository](./02-connect-github.md)
