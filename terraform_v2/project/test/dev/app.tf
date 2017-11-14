// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("config/account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

