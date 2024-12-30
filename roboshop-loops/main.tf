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

resource "aws_instance" "instance" {
  for_each = var.instances
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "${each.key}-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.key].private_ip]
}
