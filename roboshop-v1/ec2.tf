resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "frontend_dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z02540113N1Z961N7HMWN"
  name    = "frontend.dev.sy80devops.online"
    type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "mongo_dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z02540113N1Z961N7HMWN"
  name    = "mongo.dev.sy80devops.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalouge" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "catalouge_dev"
  }
}

resource "aws_route53_record" "catalouge" {
  zone_id = "Z02540113N1Z961N7HMWN"
  name    = "catalouge.dev.sy80devops.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalouge.private_ip]
}
