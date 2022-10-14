output "policy_arn" {
  description = "iam policy ARN"
  value       = try(aws_iam_policy.customer_policy[0].arn, "")
}



output "role_arn" {
  description = "iam role ARN"
  value       = aws_iam_role.lambda_role.arn
}