terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                       = "ami-0574da719dca65348"
  instance_type             = "t2.micro"
  key_name                  = "iac-alura"
  vpc_security_group_ids    = ["sg-0370a0853b3d7e6a9"]
  subnet_id                 = "subnet-017d493672d6b9360"
  
  tags = {
    Name = "Terraform Ansible Python"
  }
}