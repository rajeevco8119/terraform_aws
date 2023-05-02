provider "aws" {
  
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

resource "aws_launch_template" "whiztemp" {
  
  name_prefix = "whizLT"
  image_id = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "whizgroup" {
  
  name = "whizASG1"
  availability_zones = ["us-east-1a","us-east-1b"]
  desired_capacity = 2
  max_size = 2
  min_size = 2

  launch_template {
    id = aws_launch_template.whiztemp.id
    version = "$Latest"
  }
}