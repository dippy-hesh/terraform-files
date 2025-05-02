# terraform output value

# attributes
output "vm_instanceid" {
    description = "looking for instance id"
    value = google_compute_instance.myinstance.instance_id
  
}

output "google_compute_firewall_priority" {
    description = "find the priority"
    value = google_compute_firewall.http.priority

}


# arguments 