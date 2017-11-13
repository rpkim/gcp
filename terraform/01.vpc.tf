/* auto create subnet */
resource "google_compute_network" "vpc1" {
  name                    = "vpc1"
  description             = "Learn about auto-type networks"
  auto_create_subnetworks = "true"
}

/* custom create subnet */
resource "google_compute_network" "vpc2" {
  name                    = "vpc2"
  description             = "Learn about auto-type networks"
  auto_create_subnetworks = "false"
}

