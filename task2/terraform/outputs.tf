output "api_url" {
  value = aws_apigatewayv2_api.http.api_endpoint
}

output "ecr_repository" {
  value = aws_ecr_repository.app.repository_url
}
