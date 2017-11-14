# subnet
## private subnet
resource "google_compute_subnetwork" "private" {
    count = "${length(var.private_subnets)}"

    name = "private-subnet-${element(var.region, count.index)}"
    network = "${var.network}"

    region = "${element(var.region, count.index)}"
    ip_cidr_range = "${element(var.private_subnets, count.index)}"
}

## public subnet
resource "google_compute_subnetwork" "public" {
    count = "${length(var.public_subnets)}"

    name = "public-subnet-${element(var.region, count.index)}"
    network = "${var.network}"

    region = "${element(var.region, count.index)}"
    ip_cidr_range = "${element(var.public_subnets, count.index)}"
}

## db subnet
resource "google_compute_subnetwork" "db" {
    count = "${length(var.db_subnets)}"

    name = "db-subnet-${element(var.region, count.index)}"
    network = "${var.network}"

    region = "${element(var.region, count.index)}"
    ip_cidr_range = "${element(var.db_subnets, count.index)}"
}

# firewall