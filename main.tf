module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = aws_vpc.eks_vpc.id
  subnet_ids      = concat(aws_subnet.public_subnet[*].id, aws_subnet.private_subnet[*].id)

  eks_managed_node_groups = {
    green = {
      min_size     = var.min_capacity
      max_size     = var.max_capacity
      desired_size = 1

      instance_type = var.instance_type
      capacity_type = "SPOT"
    }
  }
}

resource "aws_iam_user" "k8s_user" {
  name = "k8s-api-user"
}

resource "aws_iam_policy" "k8s_full_access" {
  name        = "k8s-full-access"
  description = "Policy for full access to the eks cluster"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "eks:DescribeCluster",
                "eks:ListClusters"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "k8s_user_policy_attachment" {
  name       = "k8s_policy_attachment"
  policy_arn = aws_iam_policy.k8s_full_access.arn
  users      = [aws_iam_user.k8s_user.name]
}