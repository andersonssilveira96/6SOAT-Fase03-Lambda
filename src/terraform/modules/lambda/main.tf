resource "aws_lambda_function" "techchallenge_lambda_auth" {
  function_name = "techchallenge-lambda-auth"
  filename      = "../TechChallenge.Authentication/auth_lambda.zip"
  handler       = "TechChallenge.Authentication::TechChallenge.Authentication.Function::LambdaAuth"
  runtime       = "dotnet8"
  role          = var.arn
  tags = {
    Name = "techchallenge-lambda"
  }
  timeout     = 30
  memory_size = 512
}

resource "aws_lambda_function" "techchallenge_lambda_cadastro" {
  function_name = "techchallenge-lambda-cadastro"
  filename      = "../TechChallenge.Authentication/auth_lambda.zip"
  handler       = "TechChallenge.Authentication::TechChallenge.Authentication.Function::LambdaSignUP"
  runtime       = "dotnet8"
  role          = var.arn
  tags = {
    Name = "techchallenge-lambda"
  }
  timeout     = 30
  memory_size = 512
}