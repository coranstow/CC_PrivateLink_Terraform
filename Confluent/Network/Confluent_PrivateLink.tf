

resource "confluent_network_v1" "private-link" {
  display_name = "Private Link Network"
  cloud = "AWS"
  region = "ap-southeast-2"
  connection_types = ["PRIVATELINK"]
  zones = ["apse2-az1", "apse2-az2", "apse2-az3"]
  environment {
    id = data.confluent_environment_v2.staging.id
  }
}

resource "confluent_private_link_access_v1" "aws" {
  display_name = "AWS Private Link Access"
  aws {
    account = var.aws_account
  }
  environment {
    id =  data.confluent_environment_v2.staging.id
  }
  network {
    id = confluent_network_v1.private-link.id
  }
}

output "PrivateLink" {
  value = confluent_network_v1.private-link.id
}

output "aws_private_link_endpoint_service" {
  value = confluent_network_v1.private-link.aws[0]
}

