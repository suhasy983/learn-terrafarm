variable "domain_name" {
  default = "sy80devops.online"
}

variable "component" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    catalogue = {
      instance_type = "t3.micro"
    }
    mongo = {
      instance_type = "t3.small"
      }

  }
}

