// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-7e8c7b90eb514d83"
  region      = "ap-northeast-1"
}

