output "dns_publica_server" {
    description = "IP Publica servidor Develop"
    value = "http://${aws_instance.amazonlinux.public_ip}"
}


output "access_key" {
    description = "Key pair"
    value = tls_private_key.rsa.private_key_pem

}