variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the EC2 instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "env" {
  description = "Environment label (e.g., dev, staging, prod)"
  type        = string
}
