resource "aws_instance" "instance" {
  count = length(var.component)
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "${var.component[count.index]}.dev"
  }
}

resource "aws_route53_record" "dns_record" {
  count = length(var.component)
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "${var.component[count.index]}.${var.domain_name}"
    type    = "A"
  ttl     = 15
  records = [aws_instance.instance[count.index].private_ip]
}




