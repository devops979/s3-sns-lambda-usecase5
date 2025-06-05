# modules/lambda_function/outputs.tf
#output "arn" {
#  value = aws_lambda_function.this.arn
#}



output "function_name" {
  value = aws_lambda_function.image_resizer.function_name
}