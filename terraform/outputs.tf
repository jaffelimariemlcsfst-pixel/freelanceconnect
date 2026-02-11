output "artifact_registry_url" {
  description = "The URL of the Artifact Registry repository"
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.repo.name}"
}

output "cloud_run_url" {
  description = "The URL of the deployed Cloud Run service"
  value       = google_cloud_run_service.default.status[0].url
}

output "bucket_name" {
  description = "The name of the created Cloud Storage bucket"
  value       = google_storage_bucket.bucket.name
}
