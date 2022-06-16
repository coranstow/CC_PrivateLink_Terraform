

resource "confluent_kafka_cluster_v2" "staging-cluster" {
  display_name = "Dedicated_Cluster_by_TF"
  availability = "MULTI_ZONE"
  cloud        = "AWS"
  region       = var.region
  dedicated {
    cku = 2
  }

  environment {
    id = data.confluent_environment_v2.staging.id
  }

  network {
    id = data.terraform_remote_state.network.outputs.PrivateLink

  }
}



output "bootstrap_endpoint" {
  value = confluent_kafka_cluster_v2.staging-cluster.bootstrap_endpoint
}

output "cluster_id" {
  value = confluent_kafka_cluster_v2.staging-cluster.id
}
