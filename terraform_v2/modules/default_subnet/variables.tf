variable "region" {
    type = "list"
    default = ["asia-east1","asia-northeast1","asia-south1"]
}
variable "private_subnets" {
    type = "list"
    default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]    
}
variable "public_subnets" {
    type = "list"
    default = ["192.168.5.0/24","192.168.4.0/24","192.168.3.0/24"]
}
variable "db_subnets" {
    type = "list"
    default = ["10.100.0.0/24","10.100.1.0/24","10.100.2.0/24"]
}
variable "network" {
    type = "string"
}
