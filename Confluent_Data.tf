## These IDs are descriptors for the environment this process is operating in.

## Environment
data "confluent_environment" "staging" {
  id = var.confluent_cloud_environment_id
}
