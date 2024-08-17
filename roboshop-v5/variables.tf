variable "domain_name" {
  default = "sydevops80.online"
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

