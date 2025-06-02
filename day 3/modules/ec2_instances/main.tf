provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform_instance3_moduled" {
  ami = var.ami_id
  instance_type = var.instance_type
}