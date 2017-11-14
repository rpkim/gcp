/* auto create subnet */
resource "google_compute_network" "vpc" {
  name                    = "${var.name}"
  description             = "${var.description}"
  auto_create_subnetworks = "false"
}