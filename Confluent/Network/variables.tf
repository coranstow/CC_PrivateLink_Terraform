//Confluent Cloud API Key for a user with Environment Admin
variable "confluent_cloud_api_key" {
  description = "API Key"
  default = ""
}
variable "confluent_cloud_api_secret" {
  description = "Secret for api_key"
  default     = ""
}

variable "confluent_cloud_organisation_id" {
  description = "The ID of the Organisation"
  default     = ""
}

variable "confluent_cloud_environment_id" {
  description = "The ID of the Environment that is being administered"
  default     = ""
}

variable "aws_account" {
  type = string
}

variable "region" {
  description = "The AWS Region of the existing VPC"
  type = string
}

variable "vpc_id" {
  description = "The VPC ID to private link to Confluent Cloud"
  type = string
}

variable "privatelink_service_name" {
  description = "The Service Name from Confluent Cloud to Private Link with (provided by Confluent)"
  type = string
}

variable "subnets_to_privatelink" {
  description = "A map of Zone ID to Subnet ID (ie: {\"use1-az1\" = \"subnet-abcdef0123456789a\", ...})"
  type = map(string)
}


