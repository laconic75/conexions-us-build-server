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

data "aws_subnet" "public_subnet" {
  vpc_id = var.vpc
  availability_zone = var.availability_zone
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

module "conexions_us_build_server" {
  source = "git@github.com:laconic75/terraform-aws-web-application.git"

  availability_zone    = var.availability_zone
  ebs_size             = var.ebs_size
  has_public_ip        = var.web_server_has_public_ip
  hostname             = var.hostname
  iam_instance_profile = var.iam_instance_profile
  key_name             = var.key_name
  region               = var.region
  standard_tags        = var.standard_tags
  subnet_id            = data.aws_subnet.public_subnet.id
  vpc                  = var.vpc
}
