provider "aws"{
    alias = "region1"
    region = "us-east-1"
}

provider "aws" {
    alias = "region2"
    region = "eu-west-1"
}

resource "aws_instance" "terra_instance1" {
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"
    provider = aws.region1
    tags = {
        Name : "tfinstance1"
    }
}

resource "aws_instance" "terra_instance2" {
    ami = "ami-0df368112825f8d8f"
    instance_type = "t2.micro"
    provider = aws.region2
    tags = {
        Name : "tfinstance2"
    }
}