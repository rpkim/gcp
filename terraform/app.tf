// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-7d4e3870a9b5944c"
  region      = "ap-northeast-1"
}

