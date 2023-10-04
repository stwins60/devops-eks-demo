# resource "aws_vpc" "eks_vpc" {
#   cidr_block           = var.vpc_cidr_block
#   enable_dns_hostnames = true
#   enable_dns_support   = true
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id                  = aws_vpc.eks_vpc.id
#   cidr_block              = var.public_cidr_block
#   availability_zone       = var.availability_zone
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "private_subnet" {
#   vpc_id            = aws_vpc.eks_vpc.id
#   cidr_block        = var.private_cidr_block
#   availability_zone = var.availability_zone
# }

# resource "aws_subnet" "public_2_subnet" {
#   vpc_id                  = aws_vpc.eks_vpc.id
#   cidr_block              = var.public_2_cidr_block
#   availability_zone       = var.availability_2_zone
#   map_public_ip_on_launch = true
# }

# resource "aws_subnet" "private_2_subnet" {
#   vpc_id            = aws_vpc.eks_vpc.id
#   cidr_block        = var.private_2_cidr_block
#   availability_zone = var.availability_3_zone
# }