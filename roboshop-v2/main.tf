resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "frontend_dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "frontend.dev.${var.domain_name}"
    type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "mongo_dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "mongo.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalouge" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids =  data.aws_security_groups.sg.ids
  tags = {
    Name = "catalouge_dev"
  }
}

resource "aws_route53_record" "catalouge" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "catalouge.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalouge.private_ip]
}
