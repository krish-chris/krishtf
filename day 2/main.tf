provider "aws"{
    alias = "region1"
    region = "us-east-1"
}

provider "aws" {
    alias = "region2"
    region = "eu-west-1"
}

resource "aws_instance" "terra_instance" {
    ami = ami-084568db4383264d4
    instance_type = t2.micro
    provider = aws.region1
    tags = {
        Name : "tfinstance1"
    }
}

resource "aws_instance" "terra_instance" {
    ami = ami-084568db4383264d4
    instance_type = t2.micro
    provider = aws.region2
    tags = {
        Name : "tfinstance2"
    }
}