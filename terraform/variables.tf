variable "project_id" {
  description = "The Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "The Google Cloud region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "app_name" {
  description = "The name of the application (used for resources naming)"
  type        = string
  default     = "workshop-app"
}
