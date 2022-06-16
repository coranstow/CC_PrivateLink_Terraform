## These IDs are descriptors for the environment this process is operating in.

## Environment
data "confluent_environment_v2" "staging" {
  id = var.confluent_cloud_environment_id
}

#data "confluent_network_v1" "network" {
#  id = var.network_id
#  environment {
#    id = data.confluent_environment_v1.staging.id
#  }
#}

data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    path = "../Network/terraform.tfstate"
  }
}

