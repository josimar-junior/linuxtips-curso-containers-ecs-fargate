resource "aws_service_discovery_private_dns_namespace" "main" {
  name        = format("%s.discovery.com", var.project_name)
  description = "Service Discovery for the ECS cluster"
  vpc         = data.aws_ssm_parameter.vpc.value
}

resource "aws_service_discovery_private_dns_namespace" "service_connect" {
  name        = format("%s.local", var.project_name)
  description = "Service Connect for the ECS cluster"
  vpc         = data.aws_ssm_parameter.vpc.value
}