## These IDs are descriptors for the environment this process is operating in.

## Environment
data "confluent_environment" "staging" {
  id = var.confluent_cloud_environment_id
}

data "confluent_network" "network" {
  id = var.network_id
  environment {
    id = data.confluent_environment.staging.id
  }
}

