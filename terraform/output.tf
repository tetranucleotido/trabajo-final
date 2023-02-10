output "ec2_ip" {
    description = "IP publica de la Instancia EC2"
    value = aws_instance.amazonlinux.public_ip
}

output "private_key" {
  value     = tls_private_key.key.private_key_pem
  sensitive = true
}