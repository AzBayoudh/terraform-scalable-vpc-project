resource "aws_security_group"  "Bastion_sg"{
    name ="Bastion_sg"
    description = "Security group for Bastion host"
    vpc_id = module.vpc.vpc_id


    # INGRESS = who can come IN to the server
    ingress{
        description = "SSH from my IP"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.my_ip]
    }

    # EGRESS = what the server can go OUT to
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
}


resource "aws_security_group"  "Private_sg"{
    name = "Private_sg"
    description = "Security group for Private instances"
    vpc_id = module.vpc.vpc_id

    
    # INGRESS = who can come IN to the server
    ingress{
        description = "SSH from Bastion sg"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [aws_security_group.Bastion_sg.id]
    }

    # EGRESS = what the server can go OUT to
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
}
