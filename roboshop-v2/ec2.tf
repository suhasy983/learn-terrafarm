variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0af0abf0c61856bbd"]
}

variable "zone_id" {
  default = "Z02540113N1Z961N7HMWN"
}

variable "domain_name" {
  default = "sydevops80.online"
}

resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend_dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend.dev.${var.domain_name}"
    type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mongo_dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = var.zone_id
  name    = "frontend.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalouge" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = "catalouge_dev"
  }
}

resource "aws_route53_record" "catalouge" {
  zone_id = var.zone_id
  name    = "frontend.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalouge.private_ip]
}
