resource "google_compute_network" "default" {
  name                    = "learnauto"
  description             = "Learn about auto-type networks"
  auto_create_subnetworks = "true"
}

resource "google_compute_network" "custom-subnet" {
  name                    = "custom-subnet"
  description             = "Learn about auto-type networks"
  auto_create_subnetworks = "false"
}

