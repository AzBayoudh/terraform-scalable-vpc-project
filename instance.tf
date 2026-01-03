 module "Bastion_Instance" {
 source = "terraform-aws-modules/ec2-instance/aws"
 version = ">= 4.0.0"

 name = "tf-vpc-bastion-host"
 instance_type = "t3.micro"
 key_name = aws_key_pair.jumpbox.key_name
 ami = "ami-068c0051b15cdb816"

 subnet_id = module.vpc.public_subnets[0]
 associate_public_ip_address = true
 ipv6_address_count = 1

 vpc_security_group_ids = [aws_security_group.Bastion_sg.id]

    tags = {
        Name = "tf-vpc-bastion-host"
    }   

 }

module "Private_Instance" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = ">= 4.0.0"
    
    name = "tf-vpc-private-instance"
    instance_type = "t3.micro"
    key_name = aws_key_pair.jumpbox.key_name
    ami = "ami-068c0051b15cdb816"
    
    subnet_id = module.vpc.private_subnets[0]
    associate_public_ip_address = false
    ipv6_address_count = 1
    
    vpc_security_group_ids = [aws_security_group.Private_sg.id]
    
        tags = {
            Name = "tf-vpc-private-instance"
        }
}
 

 

