provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}
resource "aws_sns_topic" "sns_topic" {
    
    name = "whiz-topic"
}

resource "aws_sns_topic_subscription" "sns_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol = "email"
  endpoint = var.sns_subscription_email

}

