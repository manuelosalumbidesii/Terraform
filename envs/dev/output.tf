output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "security_group_id" {
  value = module.network.security_group_id
}

output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "default_sg_id" {
  value = aws_security_group.web_sg.id
}
