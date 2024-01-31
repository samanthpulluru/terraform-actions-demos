variable "sg_port" {
  type = list(number)
  description = "List of ingress ports"
  default = [8200, 8201, 8300]
}

resource "aws_security_group" "dynamic_sg" {
  name = "dynamic-sg"
  description = "Ingress for Vault"

  dynamic "ingress" {
    for_each = var.sg_port
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
