module "network" {
  source             = "../../modules/vpc"
  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  env                = var.env
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.az
}


data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["dev-vpc"]
  }

  filter {
    name   = "cidr-block"
    values = ["10.0.0.0/16"]
  }
}

