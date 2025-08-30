variable "image" {
  description = "The image to use for the VM instance"
  type        = string
  default     = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2204-lts"
  
}
// Added variable for machine type if want to create multiple instances with same machine types
/* variable "machine_type" {
  description = "The machine type to use for the VM instance"
  type        = string
  default     = "e2-micro"
  
} */

//Added variable for machine type if want to create multiple instances with different machine types
variable "machine_type" {
  description = "The machine type to use for the VM instance"
  type        = map(string)
  default     = {
    dev  = "e2-micro"
    uat  = "e2-small"
    prod = "e2-medium"
   // server4 = "e2-small
  }

}



variable "name_count" {
  description = "Number of VM instances to create"
 // type        = number
  default     = ["server1", "server2", "server3"]
}

# variable "server_names" {
#   description = "List of server names"
#   type        = list(string)
#   default     = ["server1", "server2", "server3"]
# }
