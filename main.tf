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

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "us_west_2"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "yoga-terraform-test"
  providers = {
    aws           = aws
    aws.us_west_2 = aws.us_west_2
  }
}
