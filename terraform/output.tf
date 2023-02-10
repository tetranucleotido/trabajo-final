output "ec2_ip" {
    description = "IP publica de la Instancia EC2"
    value = aws_instance.amazonlinux.public_ip
}