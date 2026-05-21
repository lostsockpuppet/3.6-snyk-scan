output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.hello_world.function_name
}

output "lambda_role_name" {
  description = "Name of the Lambda execution role"
  value       = aws_iam_role.lambda_role.name
}