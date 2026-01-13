project_name = "linuxtips-ecs-cluster-fargate"

### SSM VPC Parameters ###
ssm_vpc_id           = "/linuxtips-vpc/vpc/vpc_id"
ssm_public_subnet_1  = "/linuxtips-vpc/vpc/subnet_public_1a"
ssm_public_subnet_2  = "/linuxtips-vpc/vpc/subnet_public_1b"
ssm_public_subnet_3  = "/linuxtips-vpc/vpc/subnet_public_1c"
ssm_private_subnet_1 = "/linuxtips-vpc/vpc/subnet_private_1a"
ssm_private_subnet_2 = "/linuxtips-vpc/vpc/subnet_private_1b"
ssm_private_subnet_3 = "/linuxtips-vpc/vpc/subnet_private_1c"

### Balancer ###
load_balancer_internal = false
load_balancer_type     = "application"

### ECS General ###
cluster_on_demand_min_size     = 1
cluster_on_demand_max_size     = 3
cluster_on_demand_desired_size = 2

cluster_spots_min_size     = 1
cluster_spots_max_size     = 3
cluster_spots_desired_size = 2