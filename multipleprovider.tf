terraform {
  required_version = "value"
  required_providers {
    google = {
        source = "value"
        version = "value"
    }
    
  }
}


provider "google" {
  project = "my-project-59-455720"
  region = "us-central1"
  zone = "us-central1-a"
  alias = "keep"
}

provider "google" {
  project = "my-project-59-455720"
  region = "us-east1"
  zone = "us-east1-a"
  alias = "up"
}

