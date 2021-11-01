resource "aws_subnet" "itdevops-pub" {
  vpc_id     = var.vpc_id 
  cidr_block = var.cidr_block_public 
  availability_zone = var.availability_zone_public

  tags = {
    Name = var.public_subnet_name
    Department = var.Department
  }
}
resource "aws_subnet" "itdevops-prv" {
  vpc_id     = var.vpc_id 
  cidr_block = var.cidr_block_private
  availability_zone = var.availability_zone_private

  tags = {
    Name = var.private_subnet_name 
    Department = var.Department
  }
}
