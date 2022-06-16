
## Environment
confluent_cloud_environment_id="env-k8nkp2"

bootstrap_endpoint = "lkc-225ngo-gex94p.ap-southeast-2.aws.glb.confluent.cloud:9092"
#AWS Inputs -
aws_account = "492737776546"
region = "ap-southeast-2"
vpc_id = "vpc-eb1daf8c"
privatelink_service_name = "com.amazonaws.vpce.ap-southeast-2.vpce-svc-011cf5d9395b37271"

subnets_to_privatelink = {
  "apse2-az1" = "subnet-05017362",
  "apse2-az2" = "subnet-eb48bab3",
  "apse2-az3" = "subnet-86a6cacf",
}
