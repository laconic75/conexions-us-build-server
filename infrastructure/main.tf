terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.22.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "conexions_us_build_server" {
  source = "/home/joel/Source/terraform-aws-web-application/"

  availability_zone    = var.availability_zone
  has_public_ip        = var.web_server_has_public_ip
  hostname             = var.hostname
  iam_instance_profile = var.iam_instance_profile
  region               = var.region
  standard_tags        = var.standard_tags
  vpc                  = var.vpc
}
