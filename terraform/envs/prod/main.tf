module "vpc" {
  source    = "../../modules/vpc"
  vpc_cidr  = var.vpc_cidr
  vpc_name  = var.vpc_name
  env       = "prod"
}
variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}
