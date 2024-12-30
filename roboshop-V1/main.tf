# 01 frontend
resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "frontend-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


#02 catalogue
resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "catalogue-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

#03 MongoDB

resource "aws_instance" "mongodb" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "mongodb-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


#04 User

resource "aws_instance" "user" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "user-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


#05 redis


resource "aws_instance" "redis" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "redis-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

#06 cart

resource "aws_instance" "cart" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "cart-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

#07 shipping
resource "aws_instance" "shipping" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "shipping-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

#08 MySql
resource "aws_instance" "mysql" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "mysql-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

#09 Payment
resource "aws_instance" "payment" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "payment-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

#10 RabbitMQ
resource "aws_instance" "rabbitmq" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "rabbitmq-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

#11 Dispatch

resource "aws_instance" "dispatch" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09f30f430454f4900"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z0839824JM76ZIPWFCGH"
  name    = "dispatch-dev.siddevsecops.icu"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}



