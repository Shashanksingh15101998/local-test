terraform {
  backend "gcs" {
    bucket = "terraform-state-123abc"
    prefix = "gcp/vm"               
  }
 
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
