variable "access_key" {}

variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}

variable "sns_subscription_email" {
  type = string
  description = "Email endpoint for SNS subscription"
  default = "anumahajan1909@gmail.com"
}

