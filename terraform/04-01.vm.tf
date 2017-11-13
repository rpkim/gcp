resource "google_compute_instance" "vm1" {
  name         = "learn-1"
  machine_type = "f1-micro" # "n1-standard-1"
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

  network_interface {
    network = "default"
    //network      = "${google_compute_network.custom-subnet.id}"
    //subnetwork   = "${google_compute_subnetwork.subnet1a.id}"

    access_config {
      // Ephemeral IP
    }
  }


  metadata {
    foo = "bar"
  }

  metadata_startup_script = "sudo apt-get install traceroute"
/*
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
  */
}

resource "google_compute_instance" "vm2" {
  metadata_startup_script = "${file("startup.sh")}"
  name         = "learn-2"
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
    subnetwork   = "${google_compute_subnetwork.subnet1a.name}"

    access_config {
      // Ephemeral IP
    }
  }
}


resource "google_compute_instance" "vm3" {
  name         = "learn-3"
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
    }
  }
}

resource "google_compute_instance" "vm4" {
  name         = "learn-windows-4"
  machine_type = "custom-2-2048" # "custom-CPUS-MEMORY"
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-1709-core"
    }
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

