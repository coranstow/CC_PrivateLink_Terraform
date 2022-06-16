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

variable "network_id" {
  description = "The ID of the CC network"
  type = string
}
variable "region" {
  description = "The AWS Region of the existing VPC"
  type = string
}
