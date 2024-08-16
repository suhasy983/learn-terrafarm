resource "aws_instance" "instance" {
  for_each = var.component
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "${each.key}.dev"
  }
}

# resource "aws_route53_record" "dns_record" {
#   count = length(var.component)
#   zone_id = data.aws_route53_zone.zone.zone_id
#   name    = "${var.component[count.index]}.dev.${var.domain_name}"
#     type    = "A"
#   ttl     = 15
#   records = [aws_instance.instance[count.index].private_ip]
# }




