provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "tf_instance"
  }
}
