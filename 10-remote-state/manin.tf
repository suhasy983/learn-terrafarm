#keeping state file at remote location

resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "dsy80-terraform"
    key = "test/terraform.tfstate"
    region = "us-east-1"
  }
}