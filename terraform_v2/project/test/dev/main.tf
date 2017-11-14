module "basic_infrastructure" {
    source = "../../../modules/basic_infrastructure"

    project_name = "${var.project_name}"
}

output "vpc_name" {
    value = "${module.basic_infrastructure.vpc_name}"
}