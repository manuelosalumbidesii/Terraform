module "network" {
  source             = "../../modules/vpc"
  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  env                = var.env
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.az
}
