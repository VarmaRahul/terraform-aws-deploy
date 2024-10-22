terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  backend "s3" {
    bucket = "backend-terraformstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

variable "github_run_id" {
  description = "The GitHub Actions run ID"
  type        = string
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "t1"

  instance_type          = "t3.micro"
  key_name               = "sample"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
