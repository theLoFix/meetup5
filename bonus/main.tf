resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}


resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  deletion_protection = "false"

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-server-2012"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
