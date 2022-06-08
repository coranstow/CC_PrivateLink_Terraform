# Configure the Confluent Cloud Provider
terraform {
  required_version = ">= 0.13.7"
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "0.9.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "= 2.32.0"
    }
  }
}

provider "confluent" {
  api_key    = var.confluent_cloud_api_key    # optionally use CONFLUENT_CLOUD_API_KEY env var
  api_secret = var.confluent_cloud_api_secret # optionally use CONFLUENT_CLOUD_API_SECRET env var
}

provider "aws" {
  region  = var.region
}