// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-f7a492f949f8a42e"
  region      = "ap-northeast-1"
}

