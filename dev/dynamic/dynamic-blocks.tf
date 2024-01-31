provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "demo_sg" {
  name = "sample-sg"

  ingress {
    from_port = 8200
    to_port = 8200
    protocl = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8201
    to_port = 8201
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8300
    to_port = 8300
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
