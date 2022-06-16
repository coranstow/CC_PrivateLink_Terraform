# Configure the Confluent Cloud Provider
terraform {
  required_version = ">= 0.13.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 2.32.0"
    }
  }
}

provider "aws" {
  region  = var.region
}