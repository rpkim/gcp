/* 
 # https://www.terraform.io/docs/providers/google/r/compute_address.html
 # https://cloud.google.com/compute/docs/ip-addresses/reserve-static-external-ip-address
*/
resource "google_compute_address" "default" {
  name = "staticeip"
  # address_type = "EXTERNAL"
  region = "us-east1"
}

resource "google_compute_instance" "vm_eip" {
  name         = "learn-eip"
  machine_type = "f1-micro" # "n1-standard-1"
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    //network = "default"
    //network      = "${google_compute_network.custom-subnet.id}"
    subnetwork   = "${google_compute_subnetwork.subnet1b.name}"

    access_config {
      // Ephemeral IP
      nat_ip      = "${google_compute_address.default.address}"

    }
  }
}

output "eip" {
    value = "${google_compute_address.default.address}"
}