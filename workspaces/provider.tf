terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "gokul-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "gokul-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
