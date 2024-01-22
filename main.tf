terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
  backend "remote" {
        # The name of your Terraform Cloud organization.
         organization = "my-error-org"

        # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
          name = "error-testing"
        }
      }
}

provider "aws" {
    region = "ap-south-1"
  
}