provider "aws" {
region = "eu-west-2"
access_key = "AKIAZJKDOM7KVWLN3BG7"
secret_key = "xGmDW13VZxQqaxqyw9ZcHvPaS2zK7d9jQbyEHgiD"
}

resource "aws_instance" "ec2_example" {
  ami                    = "ami-03ceeb33c1e4abcd1"
  instance_type          = var.instance_type
  key_name = "dockerswarm"
  tags = {
    Name = "Terraform EC2"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "eu-west-2a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}
