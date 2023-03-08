output "IP_DEV" {
    description = "IP Publica servidor"
    value = "http://${aws_instance.amazonlinux.public_ip}"
}

output "IP_TESTING" {
    description = "IP Publica servidor"
    value = "http://${aws_instance.testing.public_ip}"
}


output "IP_PROD" {
    description = "IP Publica servidor"
    value = "http://${aws_instance.prod.public_ip}"
}
