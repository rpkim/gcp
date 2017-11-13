resource "google_compute_firewall" "ingress1" {
  name    = "allow-ssh-icmp"
  network = "${google_compute_network.vpc2.name}"
  direction = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = ["allow-defaults"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "egress2" {
  name    = "allow-ssh-icmp-rdp-learncustom"
  network = "${google_compute_network.vpc2.name}"
  direction = "EGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  destination_ranges = ["${google_compute_subnetwork.subnet1a.ip_cidr_range}", "${google_compute_subnetwork.subnet1b.ip_cidr_range}", "${google_compute_subnetwork.subnet2.ip_cidr_range}", "${google_compute_subnetwork.subnet3.ip_cidr_range}"]
} 