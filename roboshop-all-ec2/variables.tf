variable "domain_name" {
  default = "sydevops80.online"
}

variable "component" {
  default = {
    frontend = {}
    catalouge = {}
    mongo = {}
    redis = {}
    rabbitmq = {}
    mssql = {}
    payment = {}
    shipping = {}
    user = {}
    dispatch = {}
    cart = {}

  }
}

