# variables.tf
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
}

variable "monitoring" {
  description = "Whether detailed EC2 monitoring is enabled"
  type        = bool
}

variable "ami_owner" {
  description = "AWS account ID that owns the AMI"
  type        = string
}

variable "ami_name_pattern" {
  description = "AMI name pattern used to locate the image"
  type        = string
}