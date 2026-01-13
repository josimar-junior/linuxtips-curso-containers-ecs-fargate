### General Configs ###
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type = string
}

### SSM VPC ###
variable "ssm_vpc_id" {}
variable "ssm_public_subnet_1" {}
variable "ssm_public_subnet_2" {}
variable "ssm_public_subnet_3" {}
variable "ssm_private_subnet_1" {}
variable "ssm_private_subnet_2" {}
variable "ssm_private_subnet_3" {}

### Balancer ###
variable "load_balancer_internal" {}
variable "load_balancer_type" {}

### ECS General ###
variable "cluster_on_demand_min_size" {}
variable "cluster_on_demand_max_size" {}
variable "cluster_on_demand_desired_size" {}

variable "cluster_spots_min_size" {}
variable "cluster_spots_max_size" {}
variable "cluster_spots_desired_size" {}

variable "capacity_providers" {
  type    = list(string)
  default = ["FARGATE", "FARGATE_SPOT"]
}