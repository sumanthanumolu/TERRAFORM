resource "aws_vpc" "it-devops-vpc" {
  cidr_block       = var.cidr_block_vpc

  tags = {
    Name = var.vpc_name 
    Department = var.Department
  }
}
 