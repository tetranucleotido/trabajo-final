resource "aws_instance" "amazonlinux" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = module.vpc.public_subnets[0]
    vpc_security_group_ids = [aws_security_group.publica.id]
    key_name = "TF_key"
    user_data = <<EOF
#! /bin/bash
yum update -y
yum -y install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
pip3 install docker-compose
EOF
  tags = {
    Name = "${var.app}"
  }
}
