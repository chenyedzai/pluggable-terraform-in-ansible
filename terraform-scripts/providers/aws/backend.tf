terraform {

  backend "s3" {
    profile = "poc"
    region  = "${var.aws_region}"
    bucket          = "containers-terraform-state-storage"
    dynamodb_table  = "terraform-state-lock"
    key     = "service/ansible/terraform_planned.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile = "poc"
  //region  = "eu-west-1"
  region  = "${var.aws_region}"
}
