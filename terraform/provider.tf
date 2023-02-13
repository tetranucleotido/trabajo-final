
# terraform {
#   backend "s3" {
#     bucket = "tetra-s3-tfstate"
#     key = "global/mystatefile/terraform.tfstate"
#     region = "us-east-1"
    
#   }
# }
provider "aws" {
    region = "us-east-1"
  
}


