# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "allow_port_80_from_anywhere" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 100
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}