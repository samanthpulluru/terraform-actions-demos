provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-0cf10cdf9fcd62d37"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}
