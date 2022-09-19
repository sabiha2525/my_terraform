terraform {
#terraform configuration details
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.20.0"
    }
  }
}

provider "google" {
  project = "var.project_id"
}
