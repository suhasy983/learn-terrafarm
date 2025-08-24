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
  default = "sy80devops.online"
}
