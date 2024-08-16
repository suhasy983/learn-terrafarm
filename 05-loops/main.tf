resource "null_resource" "test" {
  count = 3
}

variable "component" {
  default = {"frontend", "catalouge", "mongo"}
}

resource "null_resource" "test" {
  count = length(var.component)
}