output "public_ip_address" {
  value = aws_instance.terraform_instance3_moduled.public_ip
}