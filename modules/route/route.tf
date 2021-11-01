resource "aws_route_table" "itdevops-pubroute" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.itdevops-gw.id
  }

  tags = {
    Name = var.pubroute_name
    Department = var.Department
  }
}

resource "aws_route_table_association" "pub" {
  subnet_id      = var.pub_subnet_id
  route_table_id = aws_route_table.itdevops-pubroute.id
}

resource "aws_internet_gateway" "itdevops-gw" {
  vpc_id = var.vpc_id 

  tags = {
    Name = var.name_gw
    Department = var.Department
  }
}

resource "aws_route_table" "it-devops-prvroute" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.route_cidr_block
    nat_gateway_id = aws_nat_gateway.itdevops-nat.id
  }

  tags = {
    Name = var.prvRoute_name
    Department = var.Department  
  }
}

resource "aws_route_table_association" "prv" {
  subnet_id      = var.prv_subnet_id 
  route_table_id = aws_route_table.it-devops-prvroute.id
}


resource "aws_nat_gateway" "itdevops-nat" { 
  allocation_id = aws_eip.itdevops-eip.id
  subnet_id     = var.prv_subnet_id

  tags = {
    name = var.natgw_name
    Department = var.Department
  }
}

resource "aws_eip" "itdevops-eip" {
  vpc = true

  tags = {
    name = var.eip_name
    Department = var.Department
  }
}