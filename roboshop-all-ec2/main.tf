resource "aws_instance" "instance" {
  for_each = var.component
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.small"
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  instance_market_options {
      market_type = "spot"
      spot_options {
        instance_interruption_behavior = "stop"
        spot_instance_type             = "persistent"
      }
    }

  tags = {
    Name = "${each.key}.dev"
  }
}

resource "aws_route53_record" "dns_record" {
  for_each = var.component
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "${each.key}.dev.${var.domain_name}"
    type    = "A"
  ttl     = 15
  records = [aws_instance.instance[each.key].private_ip]
}




