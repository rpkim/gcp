# gcp
google cloud platform with terraform

## terrafrom download
https://www.terraform.io/downloads.html

## google cloud platform
https://console.cloud.google.com

## provider settings
~~~~
provider "google" {
  credentials = "${file("account.json")}"
  project     = "qwiklabs-gcp-7d4e3870a9b5944c"
  region      = "ap-northeast-1"
}
~~~~
- credentials is provided from \APIs & services\ -> \Credentials\ -> \Service account keys\
- download a json file.

## Create a VPC
~~~~
resource "google_compute_network" "default" {
  name                    = "learnauto"
  description             = "Learn about auto-type networks"
  auto_create_subnetworks = "true"
}
~~~~
- if you want to config custom subnet, the value of \auto_create_subnetworks=true\

## Create a subnet
~~~~
resource "google_compute_subnetwork" "subnet1a" {
  name   = "subnet-1a"
  ip_cidr_range = "192.168.5.0/24"
  network = "${google_compute_network.default.self_link}"
  region = "us-east1"
}
~~~~