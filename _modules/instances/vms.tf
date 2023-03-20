resource "local_file" "vm" {
  filename = "/home/paulo.jacinto/Documents/terraform-modulos/${var.env}/vm-${var.env}"
  content  = "VM for ${var.env} Environment"
}

resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key_details" {
  filename = "/home/paulo.jacinto/Documents/terraform-modulos/${var.env}/${var.env}-key.txt"
  content  = tls_private_key.pvtkey.private_key_pem
}
