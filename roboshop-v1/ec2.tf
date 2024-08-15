resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "demo-tf"
  }
}

resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "mongo"
  }
}

resource "aws_instance" "catalouge" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0af0abf0c61856bbd"]

  tags = {
    Name = "catalouge"
  }
}