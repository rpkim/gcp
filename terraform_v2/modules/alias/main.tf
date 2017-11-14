# A hacky way to get intermediate variables.
#
# Usage:
#   module "abc" { source = "./modules/alias", string = "foobar" }
#   module "def" { source = "./modules/alias", list = ["foo", "bar"] }
#   module "xyz" { source = "./modules/alias", map = {"foo" = "bar"} }
#
#   module.abc.string = "foobar"
#   module.def.list[0] = "foo"
#   module.xyz.map["foo"] = "bar"

# Variables must declare type, so provide all
#   the different types as possible variables
variable "string" { type = "string", default = "" }
variable "list"   { type = "list", default = [] }
variable "map"    { type = "map", default = {} }

output "string" { value = "${var.string}" }
output "list"   { value = "${var.list}" }
output "map"    { value = "${var.map}" }