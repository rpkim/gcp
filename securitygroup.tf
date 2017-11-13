resource "google_compute_firewall" "default" {
  name    = "allow-ssh-icmp-rdp-learncustom"
  network = "${google_compute_network.custom-subnet.name}"
  direction = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["3389", "22"]
  }

  source_tags = ["allow-defaults"]
  source_ranges = ["0.0.0.0/0"]
}