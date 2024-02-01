provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-0277155c3f0ab2930"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
}
