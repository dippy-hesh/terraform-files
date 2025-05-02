terraform {
required_version = ">= 1.8.5"
required_providers {
    google = {
        source = "hashicorp/google"
        version = ">= 5.33.0"
}
}
}

provider "google" {
    region = "us-central1"
    zone        = "us-central1-a"
    project = "my-project-59-455720"
    credentials = file("${path.module}/filename.json")
}

