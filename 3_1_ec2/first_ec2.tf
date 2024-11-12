terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-02f617729751b375a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}