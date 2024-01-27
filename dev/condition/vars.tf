variable "vpn_ip" {
  default = "142.250.193.110/32"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalancer", "prod-loadbalancer"]
}

variable "istest" {
  default = true
}
