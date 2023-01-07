# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "lin-tastylog-20221225"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "rga-account-lin-terraform"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "rga-account-lin-terraform"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "rga-account-lin-terraform"
  region  = "us-east-1"
}
