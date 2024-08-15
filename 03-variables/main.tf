variable "name" {
 default = "abc"
}

#outputs:
output "name" {
  value = var.name
}

variable "x" {
  default = 10
}

#outputs:
output "x" {
  value = var.x
}

