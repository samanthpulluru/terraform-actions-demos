provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-1" {
  ami = data.aws_ami.ami_id.id
  instance_type = "t2.micro"
}
