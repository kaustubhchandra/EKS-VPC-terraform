# variables.tf
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "node_instance_type" {
  description = "The instance type for the EKS worker nodes"
  default     = "t2.medium"
}

variable "desired_capacity" {
  description = "The desired capacity of the worker node group"
  default     = 2
}
