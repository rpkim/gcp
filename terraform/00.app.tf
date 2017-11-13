// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-b668ab06d1b33269"
  region      = "ap-northeast-1"
}

