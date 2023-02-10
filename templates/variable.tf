locals {
  common_tags = {
    Terraform = "true"
    Enviroment = var.env
    Owner = "Tetra DevOps"
    Project = "${var.app}-devops"   
  }
}

variable "app" {}

variable "env" {}

### variables de EC2

variable "ami" {}

variable "instance_type" {}