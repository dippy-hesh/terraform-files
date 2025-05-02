# create a gcp project
variable "gcp_project" {
  description = "my gcp project"
  type = string
  default = "my-project-59-455720"
}



# create a gcp region
variable "gcp_region" {
    type = string
    description = "it is just a region"
    default = "us-central1"
  
}



# create a gcp machine_type

variable "machine_typ" {
  type = string
  description = "creating machine type"
  default = "e2-micro"
}

