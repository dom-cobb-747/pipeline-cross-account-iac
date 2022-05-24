
locals {
  uri_separator   = "/"
  default_project = "internal"
}

terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "domcobb747-cross-account"
  }
}

provider "aws" {
  profile = "aws-ct-default"
  region  = "us-east-1"
}

data "terraform_remote_state" "state" {
  backend = "s3"
  config {
    bucket     = "${var.state_bucket}"
  }
}