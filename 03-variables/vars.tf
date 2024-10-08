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

#map variables

variable "m" {
  default = {
    course =  "devops"
    trainer = "john"
  }
}

#outputs:
# Direct values does not require to be accessed with ${}
output "name" {
  value = var.name
}

output "x" {
  value = var.x
}

output "y" {
  value = var.y
}

# Accessing Variable has a combination with a string then we need to refer the variable with ${}
output "x1" {
  value = "Value of x - ${var.x}"
}

output "l" {
  value = var.l[0]
}

output "m" {
  value = "course name - ${var.m["course"]} , trainer name - ${var.m["trainer"]}"
}

# empty variable value ask on prompt Or you can provide with CLI  with  arg   -var c=100
# cd ..;git pull;cd 03-variables;terraform init;terraform plan -var c=100
# add terraform.tfvars file for default variables file to avoid prompt
# cd ..;git pull;cd 03-variables;terraform init;terraform plan -var-file=demo.tfvars

variable "c" {
  type = number
}

output "c" {
  value = var.c
}