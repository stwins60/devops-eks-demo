variable "aws_access_key" {}
variable "aws_secret_key" {}

# --------------------------
# - VPC AND SUBNET
#---------------------------
variable "vpc_cidr_block" {
  type = string
}

variable "private_cidr_block" {
  type = string
}

variable "public_cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}


# ----------------------------------------
# - EKS CLUSTER
# ----------------------------------------
variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "instance_type" {
  type = list(string)
}

variable "max_capacity" {
  type = number
}

variable "min_capacity" {
  type = number
}