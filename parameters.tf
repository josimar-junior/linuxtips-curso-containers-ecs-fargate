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