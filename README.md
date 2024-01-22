# IAC-workflow

## Terraform Cloud

### Create an Organization and workspace.
### create a API driven workflow.
- Add the below code in the main.tf file.
<pre>
```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
  cloud {
    organization = "my-error-org"  // organization that you create in terraform cloud

    workspaces {
      name = "error-testing"       // workspace for that particular organization.
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}
```
</pre>

- Adding the AWS_KEY_ID and AWS_SECRET_KEY_ID as the env variable in the terraform cloud
- Create a API token and copy it safely

## Create an Terraform code eg: instance.tf

## Setting Up the Github Action
- create .github/workflows folder which contains terraform.yaml file which contains the workflow code.
- Add the AWS_SECRET_KEY_ID and AWS_KEY_ID and TF_API_TOKEN secret in the repo secrets in the settings.
- Add these secrets using the ${{ secret.<variable_name>}} in the orkfow file specially, AWS keys and ID




