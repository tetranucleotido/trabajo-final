resource "aws_security_group" "publica" {
  name = "${var.app}-sg"
  vpc_id = module.vpc.vpc_id

   ingress {
      cidr_blocks = ["0.0.0.0/0" ]
      description = "Acceso Http"
      from_port = 80
      to_port = 80
      protocol = "TCP"
    } 
    ingress {
      cidr_blocks = ["0.0.0.0/0" ]
      description = "Acceso Https"
      from_port = 443
      to_port = 443
      protocol = "TCP"
    } 
    ingress {
      cidr_blocks = ["0.0.0.0/0" ]
      description = "Acceso ssh"
      from_port = 22
      to_port = 22
      protocol = "TCP"
    } 
    ingress {
      cidr_blocks = ["0.0.0.0/0" ]
      description = "Acceso ssh"
      from_port = 3000
      to_port = 3002
      protocol = "TCP"
    }  
    egress {
      cidr_blocks = ["0.0.0.0/0"]
      description = "All trafic"
      from_port = 0
      to_port = 0
      protocol = "-1"
    }
    tags = local.common_tags
}