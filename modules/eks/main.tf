resource "aws_eks_cluster" "main" {
  name = "${var.env}-eks"
  role_arn = aws_iam_role.eks-cluster-role.arn
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_addon" "addon_name" {
    for_each = var.addons
    addon_name   = each.key
    cluster_name = aws_eks_cluster.main.name
    addon_version = data.aws_eks_addon_version.add-on-version[each.key].version
}