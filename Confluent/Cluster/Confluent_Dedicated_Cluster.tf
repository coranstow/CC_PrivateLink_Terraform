

resource "confluent_kafka_cluster" "staging-cluster" {
  display_name = "Dedicated_Cluster_by_TF"
  availability = "MULTI_ZONE"
  cloud        = "AWS"
  region       = var.region
  dedicated {
    cku = 2
  }

  environment {
    id = data.confluent_environment.staging.id
  }

  network {
    id = var.network_id
  }
}



output "bootstrap_endpoint" {
  value = confluent_kafka_cluster.staging-cluster.bootstrap_endpoint
}

output "cluster_id" {
  value = confluent_kafka_cluster.staging-cluster.id
}
