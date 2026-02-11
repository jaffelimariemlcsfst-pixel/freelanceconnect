---
description: Deploy the application to Cloud Run
---
# Deploy to Cloud Run

This workflow helps you deploy your application to Google Cloud Run.

## Prerequisites
- Authenticated with `gcloud`.
- Terraform infrastructure provisioned.

## Steps
1. **Build Container Image**
   ```bash
   gcloud builds submit --tag REGION-docker.pkg.dev/PROJECT_ID/REPO_NAME/IMAGE_NAME:tag .
   ```

2. **Deploy Service**
   ```bash
   gcloud run deploy workshop-app-service \
     --image REGION-docker.pkg.dev/PROJECT_ID/REPO_NAME/IMAGE_NAME:tag \
     --region us-central1 \
     --allow-unauthenticated
   ```

3. **Verify Deployment**
   - Check the Cloud Run URL provided in the output.
