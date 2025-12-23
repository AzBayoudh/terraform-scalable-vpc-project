 module "ec2_instance" {
 source = "terraform-aws-modules/ec2-instance/aws"
 
 name = "tf-vpc-bastion-host"

 instance_type = "t3.micro"
 key_name = aws_key_pair.jumpbox.key_name
 ami = "ami-068c0051b15cdb816"
 subnet_id = module.vpc.public_subnets[0]


 }

