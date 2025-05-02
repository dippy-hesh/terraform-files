# creating a vpc
resource "google_compute_network" "myvpc" {
 name = "vpc1"
 auto_create_subnetworks = "false"
}

# creating a subnet
resource "google_compute_subnetwork" "subnet" {
name = "coolsubnet"
region = "var.gcp_region1"
ip_cidr_range = "10.128.0.0/20"
network = google_compute_network.myvpc.id
}