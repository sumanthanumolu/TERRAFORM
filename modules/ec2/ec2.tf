resource "aws_instance" "sonarqube" { 
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  availability_zone      = var.availability_zone_ec2 

  network_interface {
    network_interface_id = aws_network_interface.itdevops-eni.id
    device_index         = 0
  } 
  tags = {
    Name = var.server_name
    Department = var.Department 
  }
}

resource "aws_network_interface" "itdevops-eni" {
  subnet_id   = var.prv_subnet_id 
  security_groups = [var.security_group_id]
  description = var.description_eni

  tags = {
    Name = var.eni_name
    Department = var.Department
  }
}  