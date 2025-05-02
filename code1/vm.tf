provider "google" {
    region = "us-central1"
    zone        = "us-central1-a"
    project = "my-project-59-455720"
    credentials = file("${path.module}/my-project-59-455720-54174822d7f4.json")
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"  # You can change this image
    }
  }

  network_interface {
    network = "default"  # Use "default" or your custom VPC
    access_config {
      # This is required to give the VM an external IP
    }
  }
  

  tags = ["web"]
}

