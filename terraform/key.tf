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

