terraform {
  cloud {
    organization = "ko07ga-jp"
    hostname     = "app.terraform.io"

    workspaces {
      name = "modules-aws-route53-subdomain-hostedzone"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  required_version = ">= 1.9.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

module "sample" {
  source          = "../../../modules/route53/subdomain_zone"
  subdomain_name  = "sample"
  basedomain_name = "garankuta.com"
}
