resource "aws_ssm_parameter" "lb_arn" {
  name  = "/linuxtips/ecs/lb/arn"
  value = aws_lb.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "listener_arn" {
  name  = "/linuxtips/ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  name  = "/linuxtips/ecs/lb/internal/arn"
  value = aws_lb.internal.arn
  type  = "String"
}

resource "aws_ssm_parameter" "listener_internal_arn" {
  name  = "/linuxtips/ecs/lb/internal/listener"
  value = aws_lb_listener.internal.arn
  type  = "String"
}

resource "aws_ssm_parameter" "cloudmap" {
  name  = "/linuxtips/ecs/cloudmap/namespace"
  value = aws_service_discovery_private_dns_namespace.main.id
  type  = "String"
}

resource "aws_ssm_parameter" "service_connect" {
  name  = "/linuxtips/ecs/service-connect/namespace"
  value = aws_service_discovery_private_dns_namespace.service_connect.id
  type  = "String"
}

resource "aws_ssm_parameter" "service_connect_dns" {
  name  = "/linuxtips/ecs/service-connect/dns"
  value = aws_service_discovery_private_dns_namespace.service_connect.name
  type  = "String"
}