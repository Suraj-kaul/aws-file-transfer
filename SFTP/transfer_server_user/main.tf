resource "aws_transfer_user" "transfer_server_user" {
  user_name      = var.user_names
  server_id      = var.server_id_user
  role           = var.role         
  home_directory = var.home_directory 
  tags           = var.tags

}