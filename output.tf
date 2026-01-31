output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}

output "internal_load_balancer_dns" {
  value = aws_lb.internal.dns_name
}

output "lb_ssm_arn" {
  value = aws_ssm_parameter.lb_arn.id
}

output "listener_ssm_arn" {
  value = aws_ssm_parameter.listener_arn.id
}

output "cloudmap_ssm" {
  value       = aws_ssm_parameter.cloudmap.id
  description = "The Namespace id for the cluster`s service discovery"
}

output "service_connect_id_ssm" {
  value       = aws_ssm_parameter.service_connect.id
  description = "The id for the cluster`s service connect"
}

output "service_connect_dns_ssm" {
  value       = aws_ssm_parameter.service_connect_dns.id
  description = "The dns for the cluster`s service connect"
}