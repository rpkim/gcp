// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "gcp-class"
  region      = "ap-northeast-1"
}

