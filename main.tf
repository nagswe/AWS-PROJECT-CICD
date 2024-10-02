provider "aws" {
region = ""
access_key = ""
secret_key = ""
}

resource "aws_instance" "ec2_example" {
  ami                    = ""
  instance_type          = var.instance_type
  key_name = "dockerswarm"
  tags = {
    Name = "Terraform EC2"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = ""
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}
