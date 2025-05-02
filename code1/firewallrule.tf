resource "google_compute_firewall" "myfirewall" {
name = "firwall_allow_it1"
allow {
  ports = ["2"]
  protocol = "tcp"
}
direction = "INGRESS"
network = google_compute.network.myvpc.id
priority = 700
source_ranges = ["0.0.0.0/0"]
target_tags = ["ssh-tags"]
}

# another firewall rule with 80
resource "google_compute_firewall" "http" {
name = "firwall_allow_it"
allow {
  ports = ["80"]
  protocol = "tcp"
}
direction = "INGRESS"
network = google_compute.network.myvpc.id
priority = 700
source_ranges = ["0.0.0.0/0"]
target_tags = ["webserver-tags"]
}
