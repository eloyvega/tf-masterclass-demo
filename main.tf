terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "eloy-hey"

    workspaces {
      name = "tf-masterclass-demo"
    }
  }
}

provider "aws" {
  region = var.region
}
