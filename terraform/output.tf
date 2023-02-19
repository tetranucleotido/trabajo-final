output "dns_publica_server" {
    description = "IP Publica servidor Develop"
    value = "http://${aws_instance.amazonlinux.public_ip}"
}
