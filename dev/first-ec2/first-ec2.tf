provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-035bf26fb18e75d1b"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
