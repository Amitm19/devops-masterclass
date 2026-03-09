terraform {
  required_version = "1.14.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"
  
  tags = {
    Name = "server-from-terraform"
  }
}