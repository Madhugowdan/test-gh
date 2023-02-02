
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}




terraform {
  backend "s3" {
    bucket = "create-s3-bucket-madhu-v1-testing"
    key    = "ec2-tfstate/terraform.tfstate"
    region = "eu-west-1"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0b752bf1df193a6c4"
  instance_type = "t2.micro"

}