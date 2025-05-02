# creating a vpc
resource "google_compute_network" "myvpc" {
 name = "vpc1"
 project = "my-project-59-455720"
 auto_create_subnetworks = "false"
}

# creating a subnet
resource "google_compute_subnetwork" "subnet" {
name = "coolsubnet"
region = "us-central1"
ip_cidr_range = "10.128.0.0/20"
network = google_compute_network.myvpc.id
provider = google.keep
}

# creating a subnet
resource "google_compute_subnetwork" "subnet" {
name = "coolsubnet"
region = "us-east1"
ip_cidr_range = "10.123.0.0/20"
network = google_compute_network.myvpc.id
provider = google.up
}