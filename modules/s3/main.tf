terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 3.27"
      configuration_aliases = [aws.us_west_2]
    }
  }

  required_version = ">= 0.14.9"
}

resource "aws_s3_bucket" "bucket" {
  bucket   = "${var.bucket_name}-${var.regions_to_create}"
  acl      = "private"

  tags = {
    purpose = "testing"
    used    = "terraform"
  }
}
