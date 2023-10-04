terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "devops-lab-2023"
    workspaces {
      #   prefix = "devops-eks-demo-"
      name = "devops-eks-demo"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}