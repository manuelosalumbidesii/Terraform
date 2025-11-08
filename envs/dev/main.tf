module "network" {
  source             = "../../modules/vpc"
  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  env                = var.env
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.az
}

module "ec2" {
  source              = "../../modules/ec2"
  ami                 = var.ami
  instance_type       = var.instance_type
  subnet_id           = module.network.public_subnet_id
  security_group_ids  = [module.network.default_sg_id]
  associate_public_ip = true
  name                = "web"
  env                 = var.env
}
