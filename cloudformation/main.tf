provider "aws" {

    region     = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "tls_private_key" "example" {
  
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "whizkey" {
  
  key_name = "whiz-key"
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_cloudformation_stack" "whizstack" {
  
  parameters = {
    
    DBName = "MyDatabase"
    DBPassword = "whizlabsdb123"
    DBRootPassword = "whizlabsdbroot123"
    DBUser = "WhizLabsDBUser"
    InstanceType = "t2.micro"

  }
  name = "whiz-stack"
  template_body = file("LAMP_template.json")
}