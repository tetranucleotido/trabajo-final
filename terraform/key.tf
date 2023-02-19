#Create keys with ssh-keygen -q -f keys/aws_terraform -C aws_terraform_ssh_key -N ''
#resource "aws_key_pair" "server_key" {
#    key_name = "${var.app}-key"
#    public_key = file("keys/aws_terraform.pub")
#}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "TF_key" {
  key_name   = "TF_key"
  public_key = tls_private_key.rsa.public_key_openssh
}



#Crear .pem local
resource "local_file" "TF-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey"
}

resource "aws_s3_object" "object" {
  bucket = "tetra-s3-tfstate"
  key    = "tfkey"
  source = "/home/runner/work/trabajo-final/trabajo-final/terraform/tfkey"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  # etag = filemd5("tfkey")
# }