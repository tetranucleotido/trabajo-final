#Create keys with ssh-keygen -q -f keys/aws_terraform -C aws_terraform_ssh_key -N ''
resource "aws_key_pair" "server_key" {
    key_name = "${var.app}-key"
    public_key = file("keys/aws_terraform.pub")
}