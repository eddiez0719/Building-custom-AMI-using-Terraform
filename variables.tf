variable "name" {
  default     = "Nonpro"
  type        = string
  description = "Name of the VPC"
}

variable "ami_owner" {
  default = "self"
  description = "Filter for the AMI owner"
}
variable "project" {
  type        = string
  description = "Name of project this VPC is meant to house"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "region" {
  default     = "ap-southeast-2"
  type        = string
  description = "Region of the VPC"
}

variable "key_name" {
  default     = "python-keypair-new"
  type        = string
  description = "EC2 Key pair name for the test instance"
}

variable "cidr_block" {
  default     = "172.10.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["172.10.0.0/24", "172.10.2.0/24"]
  type        = list
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["172.10.1.0/24", "172.10.3.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
  type        = list
  description = "List of availability zones"
}

#variable "test_ami" {
#  type        = string
#  description = "Test Amazon Machine Image (AMI) ID"
#}

variable "test_ebs_optimized" {
  default     = false
  type        = bool
  description = "If true, the test instance will be EBS-optimized"
}

variable "test_instance_type" {
  default     = "t2.micro"
  type        = string
  description = "Instance type for test instance"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
