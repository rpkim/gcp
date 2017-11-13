resource "google_sql_database_instance" "master" {
  name = "master-infra-db"
  region = "us-east1"
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-f1-micro"
    disk_size = 10
    disk_type = "PD_SSD"

    ip_configuration {
        authorized_networks = {
            name = "${google_compute_instance.vm1.name}"
            value = "${google_compute_instance.vm1.network_interface.0.address}/32"
        }
        authorized_networks = {
            name = "${google_compute_instance.vm2.name}"
            value = "${google_compute_instance.vm2.network_interface.0.address}/32"
        }
    }
  }
}

resource "google_sql_user" "users" {
  name     = "me"
  instance = "${google_sql_database_instance.master.name}"
  host     = "me.com"
  password = "changeme"
}