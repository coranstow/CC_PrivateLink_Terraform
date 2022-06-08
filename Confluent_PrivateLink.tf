

resource "confluent_network" "private-link" {
  display_name = "Private Link Network"
  cloud = "AWS"
  region = "ap-southeast-2"
  connection_types = ["PRIVATELINK"]
  zones = ["apse2-az1", "apse2-az2", "apse2-az3"]
  environment {
    id = data.confluent_environment.staging.id
  }
}

resource "confluent_private_link_access" "aws" {
  display_name = "AWS Private Link Access"
  aws {
    account = var.aws_account
  }
  environment {
    id =  data.confluent_environment.staging.id
  }
  network {
    id = confluent_network.private-link.id
  }
}

output "PrivateLink" {
  value = confluent_network.private-link.id
}

output "aws_private_link_endpoint_service" {
  value = confluent_network.private-link.aws[0]
}

