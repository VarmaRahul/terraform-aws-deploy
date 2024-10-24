terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  backend "s3" {
    bucket = "backend-terraformstate"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "t1"

  instance_type          = "t2.micro"
  key_name               = "sample"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
