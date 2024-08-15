##var type string
variable "name" {
 default = "abc"
}

#var type numbers
variable "x" {
  default = 10
}

##var type boolean
variable "y" {
  default = true
}
#values numbers and boolean need not to be quoted

# List Variable
variable "l" {
  default = [10, 20, "abc", false]
}
# values in list need not to be same data type


#outputs:
# Direct values does not require to be accessed with ${}
output "name" {
  value = var.name
}

output "x" {
  value = var.x
}

# Accessing Variable has a combination with a string then we need to refer the variable with ${}
output "x1" {
  value = "Value of x - ${var.x}"
}

