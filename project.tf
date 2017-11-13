resource "random_id" "random" {
  byte_length = 8
}

resource "google_project" "my_project" {
  name = "Test for Terraform"
#  project_id = "qwiklabs-gcp-${random_id.random.id}"
  project_id = "qwiklabs-gcp-290fj209q0"
}

