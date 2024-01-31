variable "sg_port_iterator" {
  type = list(number)
  description = "Variable container for ports"
  default = [8300, 8301, 8200, 9500]
}

resource "aws_security_group" "dynamic-iterator-sg" {
  name = "dynamic-iterator-sg"
  description = "SG for dynamic iterator group"

  dynamic "ingress" {
    for_each = var.sg_port_iterator
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
