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