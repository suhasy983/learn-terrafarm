variable "domain_name" {
  default = "sy80devops.online"
}

variable "component" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    catalouge = {
      instance_type = "t3.micro"
    }
    mongo = {
      instance_type = "t3.small"
      }

  }
}

