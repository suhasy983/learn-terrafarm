variable "domain_name" {
  default = "sydevops80.online"
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

