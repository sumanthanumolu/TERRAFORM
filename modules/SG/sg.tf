resource "aws_security_group" "itdevops-sg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id = var.vpc_id

  ingress  {  
      description      = "Allow HTTPS"
      from_port        = 443
      to_port          = 443
      protocol         = "TCP"
      cidr_blocks      = [var.cidr_block_vpc] 
    }
  ingress  {    
      description      = "Allow HTTP"
      from_port        = 80
      to_port          = 80
      protocol         = "TCP"
      cidr_blocks      = [var.cidr_block_vpc] 
    } 
  ingress  {  
      description      = "Allow SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "TCP"
      cidr_blocks      = [var.cidr_block_vpc] 
    }
  ingress   {  
      description      = "Allow RDP"
      from_port        = 3389
      to_port          = 3389
      protocol         = "TCP"
      cidr_blocks      = [var.cidr_block_vpc] 
    }
  ingress   {  
      description      = "Allow TCP"
      from_port        = 0
      to_port          = 65535
      protocol         = "TCP"
      cidr_blocks      = [var.cidr_block_vpc] 
    }
  ingress   {  
      description      = "Allow ICMP - IPv4"
      from_port        = 0
      to_port          = 0
      protocol         = "ICMP"
      cidr_blocks      = [var.cidr_block_vpc] 
    }


  egress     { 
      description = "Allow all traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "All"
      cidr_blocks      = [var.cidr_block_vpc] 
    }

  tags = {
    Name = var.sg_name
    Department = var.Department
  }
}