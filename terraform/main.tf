# Artifact Registry Repository
resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "${var.app_name}-repo"
  description   = "Docker repository for ${var.app_name}"
  format        = "DOCKER"
}

# Cloud Storage Bucket
resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-${var.app_name}-assets"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}

# Cloud Run Service
resource "google_cloud_run_service" "default" {
  name     = "${var.app_name}-service"
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
        env {
          name  = "BUCKET_NAME"
          value = google_storage_bucket.bucket.name
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Allow unauthenticated invocations for the workshop
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_service.default.location
  project  = google_cloud_run_service.default.project
  service  = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
