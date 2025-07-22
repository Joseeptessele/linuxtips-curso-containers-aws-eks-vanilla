variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "ssm_vpc" {
  type        = string
  description = "ID of SSM that is storing VPC's id"
}

variable "ssm_public_subnets" {
  type        = list(string)
  description = "List of SSM IDs of project's public subnets"
}

variable "ssm_private_subnets" {
  type        = list(string)
  description = "List of SSM IDs of project's private subnets"
}

variable "ssm_pod_subnets" {
  type        = list(string)
  description = "List of SSM IDs of project's pod subnets"
}

variable "k8s_version" {
  type        = string
  description = "k8s version"
}

variable "auto_scale_options" {
  type = object({
    min     = number
    max     = number
    desired = number
  })
  description = "Cluster autoscaling config"
}

variable "nodes_instance_sizes" {
  type        = list(string)
  description = "List of node instance sizes"
}

variable "addon_cni_version" {
  type        = string
  default     = "v1.18.3-eksbuild.2"
  description = "VPC CNI addon version"
}

variable "addon_coredns_version" {
  type        = string
  default     = "v1.11.3-eksbuild.1"
  description = "CoreDNS addon version"
}

variable "addon_kubeproxy_version" {
  type        = string
  default     = "v1.31.2-eksbuild.3"
  description = "Kube-Proxy addon version"
}



#### Node Groups - Custom AMI

variable "custom_ami" {
  type        = string
  description = "AMI ID customizada para os nodes"
  default     = "ami-01d396130bcd204a1"
}