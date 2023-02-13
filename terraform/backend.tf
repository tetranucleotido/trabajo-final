# #Create s3 bucket
# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "tetra-s3-tfstate"

#   lifecycle {
#     prevent_destroy = true
#   }

#   versioning {
#     enabled = true
#   }
# }