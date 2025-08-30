


resource "google_compute_instance" "default" {
  count = "${length(var.name_count)}" 
  name         = "list-${count.index+1}"
  machine_type = var.machine_type[["prod", "dev", "uat"][count.index]]  // Accessing map values using list index
  zone         = "asia-southeast1-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
  
}

output "machine_type" {
  value = google_compute_instance.default[*].machine_type
}

output "instance_name" {
  value = google_compute_instance.default[*].name
}

output "instance_zone" {
  value = google_compute_instance.default[*].zone
}