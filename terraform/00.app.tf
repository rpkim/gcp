// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-27107b877400e40b"
  region      = "ap-northeast-1"
}

