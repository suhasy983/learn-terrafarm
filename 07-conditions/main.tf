#condition in TF is to pick a value , not about running block
# = expression ? TRUE_VAL : FALSE_VAL

resource "aws_route53_record" "frontend" {
  zone_id = "Z02540113N1Z961N7HMWN"
  name    = "test.dev.sydevops80.online"
  type    = "A"
  ttl     = var.ttl  == "" ? 15 : var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {}

