variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "env" {
  description = "Environment label (e.g., dev, staging, prod)"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone for the subnet"
  type        = string
}


variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
variable "associate_public_ip" {
  type    = bool
  default = true
}
variable "name" {}
variable "env" {}
