resource "aws_transfer_ssh_key" "transfer_server_ssh_key" {

  server_id = var.server_id 
  user_name = var.user_name 
  body      = var.public_key == "" ? "" : var.public_key
}