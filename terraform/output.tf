output "dns_publica_server" {
    description = "DNS publica del servidor 1"
    value = "http://${aws_instance.amazonlinux.public_ip}"
}


