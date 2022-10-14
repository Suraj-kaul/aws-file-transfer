output "user_server_id" {
  description = "iam role ARN"
  value       = aws_transfer_user.transfer_server_user.user_name
}