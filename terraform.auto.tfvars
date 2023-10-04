vpc_cidr_block       = "10.0.0.0/16"
public_cidr_block    = "10.0.1.0/24"
private_cidr_block   = "10.0.2.0/24"
public_2_cidr_block  = "10.0.3.0/24"
private_2_cidr_block = "10.0.4.0/24"
availability_zone    = "us-west-2a"
availability_2_zone  = "us-west-2b"
availability_3_zone  = "us-west-2c"

# ---- EKS ----
cluster_name    = "eks-cluster-demo-2023"
cluster_version = "1.26"
max_capacity    = 3
min_capacity    = 1
instance_type   = ["m6i.large"]