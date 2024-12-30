module "roboshop" {
  for_each = var.instances
  source = "./module"
  component_name = each.key
}


variable "instances" {
  default = {
    frontend = {}
    catalogue = {}
    mongodb = {}
    user = {}
    cart = {}
    redis = {}
    payment = {}
    mysql = {}
    shipping = {}
    rabbitmq = {}
    dispatch = {}
  }
}
