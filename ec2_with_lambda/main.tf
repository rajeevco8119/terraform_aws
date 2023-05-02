#arn:aws:iam::514202047765:role/myrole-35569.69480898
provider "aws" {

    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
  
}

resource "aws_lambda_function" "lambda" {
  
  filename = "whiz_lambda_function.zip"
  function_name = "myEC2LambdaFunction"
  role = "arn:aws:iam::514202047765:role/myrole-35569.69480898"
  handler = "lambda_function.lambda_handler"
  timeout = 6
  runtime = "python3.8"
  source_code_hash = filebase64("whiz_lambda_function.zip")
}