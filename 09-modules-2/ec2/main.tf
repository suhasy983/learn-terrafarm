resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = "aws_instance.test."
}