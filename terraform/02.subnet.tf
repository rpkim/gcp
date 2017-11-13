# subnet for vpc2

resource "google_compute_subnetwork" "subnet1a" {
  name   = "subnet-1a"
  ip_cidr_range = "192.168.5.0/24"
  network = "${google_compute_network.vpc2.self_link}"
  region = "us-east1"
}

resource "google_compute_subnetwork" "subnet1b" {
  name   = "subnet-1b"
  ip_cidr_range = "192.168.3.0/24"
  network = "${google_compute_network.vpc2.self_link}"
  region = "us-east1"
}

resource "google_compute_subnetwork" "subnet2" {
  name   = "subnet-2"
  ip_cidr_range = "192.168.7.0/24"
  network = "${google_compute_network.vpc2.self_link}"
  region = "us-east1"
}

resource "google_compute_subnetwork" "subnet3" {
  name   = "subnet-3"
  ip_cidr_range = "192.168.6.0/24"
  network = "${google_compute_network.vpc2.self_link}"
  region = "europe-west1"
}

output "subnets_cidr" {
  value = ["${google_compute_subnetwork.subnet1a.ip_cidr_range}",
   "${google_compute_subnetwork.subnet1b.ip_cidr_range}",
   "${google_compute_subnetwork.subnet2.ip_cidr_range}",
   "${google_compute_subnetwork.subnet3.ip_cidr_range}"]
}
