output vpc {
    value = "${google_compute_network.vpc.self_link}"
}

output vpc_name {
    value = "${google_compute_network.vpc.name}"
}

output vpc_gateway_ip4v {
    value = "${google_compute_network.vpc.gateway_ipv4}"
}