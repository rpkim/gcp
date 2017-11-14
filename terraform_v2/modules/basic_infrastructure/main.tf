resource "random_id" "id" {
 byte_length = 4
 prefix      = "${terraform.workspace}-"
}

module "label" {
    source = "../alias"
    string = "${join("-",compact(list("${var.project_name}","${random_id.id.hex}")))}"
}

module "default_vpc" {
    source = "../default_vpc"

    name = "${module.label.string}"
    description = "${module.label.string}"
}

module "default_subnet" {
    source = "../default_subnet"
    network = "${module.default_vpc.vpc}"
}