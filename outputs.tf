output "bastion_public_ip" {
  description = "The public IP address of the bastion host"
  value = module.Bastion_Instance.public_ip
}

output "private_instance_private_ip" {
    description = "Private IP of the prvivate instance"
    value = module.Private_Instance.private_ip
}
