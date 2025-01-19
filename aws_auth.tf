# # permite que o processo de join no cluster funcione para nos que estiverem associados a role abaixo
# resource "kubernetes_config_map" "aws-auth" {
#   metadata {
#     name      = "aws-auth"
#     namespace = "kube-system"
#   }

#   data = {
#     mapRoles = <<YAML
# - rolearn: ${aws_iam_role.eks_nodes_role.arn}
#   username: system:node:{{EC2PrivateDNSName}}
#   groups:
#   - system:bootstrappers
#   - system:nodes
#   - system:node-proxier
# YAML
#   }

#   depends_on = [
#     aws_eks_cluster.main
#   ]

# }