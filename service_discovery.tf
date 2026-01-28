resource "aws_service_discovery_private_dns_namespace" "main" {
  name        = format("%s.discovery.com", var.project_name)
  description = "Service Discovery for the ECS cluster"
  vpc         = data.aws_ssm_parameter.vpc.value
}