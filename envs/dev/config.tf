terraform {
  required_version = "= 1.5.7"

  # backend "s3" {
  #   bucket         = "terraform-states-edp-xxxxxxx"
  #   key            = "dev/eu-central-1/terraform.tfstate"
  #   region         = "eu-central-1"
  #   acl            = "bucket-owner-full-control"
  #   dynamodb_table = "terraform_locks"
  #   encrypt        = true
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.72.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }
  }
}

provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.role_arn
  }
}
