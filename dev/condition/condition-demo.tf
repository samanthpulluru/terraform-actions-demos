provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "vars_demo" {
  count = var.istest == true ? 1 : 3
  name = "demo-variables-${var.elb_names[count.index]}"
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

 ingress {
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

}
