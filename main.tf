terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
  cloud {
    organization = "my-error-org"

    workspaces {
      name = "error-testing"
    }
  }
}

provider "aws" {}
