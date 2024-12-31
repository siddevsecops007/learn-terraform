resource "aws_instance" "instance" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = var.instance_name
  }
}

variable "instance_name" {}