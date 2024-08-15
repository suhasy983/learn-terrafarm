variable "name" {
 default = "abc"
}

variable "x" {
  default = 10
}

#outputs:
output "x" {
  value = var.x
}
