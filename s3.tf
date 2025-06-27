terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "maxbill_s3" {
  bucket_prefix = "maxbill-"
  force_destroy = false
  acceleration_status = "Enabled"

  tags = {
    Owner       = "maxbill"
    Environment = "staging"
    created_by = "terraform"
  }
}