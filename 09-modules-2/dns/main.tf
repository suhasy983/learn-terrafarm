resource "aws_route53_record" "frontend" {
  zone_id = "Z02540113N1Z961N7HMWN"
  name    = "test.sy80devops.online"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}