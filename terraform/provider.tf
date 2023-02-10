terraform {
  backend "s3" {
    bucket = "${var.app}-s3-tfstate"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
    
  }

}

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.app}-s3-tfstate"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }
}