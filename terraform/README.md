# Terraform Infrastructure

This directory contains Terraform configuration to provision GCP infrastructure for the workshop application.

## Resources Created

- **Artifact Registry Repository** - Docker container registry for storing application images
- **Cloud Storage Bucket** - For storing application assets
- **Cloud Run Service** - Serverless container hosting for the application
- **IAM Policy** - Allows public access to the Cloud Run service

## Prerequisites

### 1. Install Google Cloud SDK

Download and install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install).

### 2. Authenticate with GCP

```bash
gcloud auth application-default login
```

### 3. Enable Required APIs

Enable the Artifact Registry and Cloud Run APIs in your GCP project:

```bash
gcloud services enable artifactregistry.googleapis.com run.googleapis.com --project=YOUR_PROJECT_ID
```

Or enable them manually via the GCP Console:
- [Artifact Registry API](https://console.developers.google.com/apis/api/artifactregistry.googleapis.com/overview)
- [Cloud Run Admin API](https://console.developers.google.com/apis/api/run.googleapis.com/overview)

## Configuration

Update `terraform.tfvars` with your GCP project details:

```hcl
project_id = "your-project-id"
region     = "us-central1"
app_name   = "workshop-app"
```

## Usage

### Initialize Terraform

```bash
terraform init
```

### Preview Changes

```bash
terraform plan
```

### Apply Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

## Outputs

After successful provisioning, you will receive:

| Output | Description |
|--------|-------------|
| `cloud_run_url` | Public URL of the Cloud Run service |
| `artifact_registry_url` | Docker registry URL for pushing images |
| `bucket_name` | Name of the Cloud Storage bucket |
