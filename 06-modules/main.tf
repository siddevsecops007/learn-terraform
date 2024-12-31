variable "instances" {
  default = [
    "test1",
    "test2"
  ]
}


module "ec2" {
  count = length(var.instances)
  source = "./ec2"
  instance_name = var.instances[count.index]
}


output "ip_address" {
  value = module.ec2
}

# module "route53" {
#   count = length(var.instances)
#   source = "./route 53"
#   instance_name = var.instances[count.index]
#   ip_address = module.ec2[count.index]
# }