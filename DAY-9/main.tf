terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
variable "region" {}
variable "instance_type" {}
variable "instance_name" {}

resource "aws_instance" "example" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
