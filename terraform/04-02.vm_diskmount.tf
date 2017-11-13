
resource "google_compute_disk" "default" {
  name  = "minecraft-disk"
  type  = "pd-ssd"
  zone  = "us-east1-b"
  size  = 50
  //disk_encryption_key_raw = true
  image = "debian-8-jessie-v20170523"
  labels {
    environment = "dev"
  }
}

resource "google_compute_instance" "vm5" {
  name         = "learn-5"
  machine_type = "custom-2-2048" # "custom-CPUS-MEMORY"
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  /*
  scratch_disk {
  }
*/
  attached_disk {
    source = "${google_compute_disk.default.self_link}"
  }


  network_interface {
    //network = "default"
    //network      = "${google_compute_network.custom-subnet.id}"
    subnetwork   = "${google_compute_subnetwork.subnet1b.name}"

    access_config {
      // Ephemeral IP
    }
  }
}