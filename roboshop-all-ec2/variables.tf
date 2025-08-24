variable "domain_name" {
  default = "sy80devops.online"
}

variable "component" {
  default = {
    frontend = {}
    catalogue = {}
    mongo = {}
    redis = {}
    rabbitmq = {}
    mysql = {}
    payment = {}
    shipping = {}
    user = {}
    dispatch = {}
    cart = {}

  }
}

