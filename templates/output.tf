output "ec2_wp" {
    description = "IP publica de la Instancia EC2 con Wordpress"
    value = aws_instance.wordpress.public_ip
}