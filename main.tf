module "vpc" {

source = "./modules/vpc"
cidr_block_vpc = var.cidr_block_vpc
vpc_name = var.vpc_name
Department = var.Department

}
module "subnet" {

source = "./modules/subnet"
vpc_id = module.vpc.vpc_id
cidr_block_public = var.cidr_block_public
availability_zone_public = var.availability_zone_public
public_subnet_name = var.public_subnet_name
Department = var.Department
cidr_block_private = var.cidr_block_private
availability_zone_private = var.availability_zone_private
private_subnet_name = var.private_subnet_name
}
module "SG"{

source = "./modules/SG"
security_group_name = var.security_group_name
security_group_description = var.security_group_description
vpc_id = module.vpc.vpc_id
cidr_block_vpc = var.cidr_block_vpc
sg_name = var.sg_name
Department = var.Department
}

module "route" {

source = "./modules/route"
vpc_id = module.vpc.vpc_id
route_cidr_block = var.route_cidr_block 
pubroute_name = var.pubroute_name
Department = var.Department
pub_subnet_id = module.subnet.pub_subnet_id 
prvRoute_name = var.prvroute_name
prv_subnet_id = module.subnet.prv_subnet_id
natgw_name = var.natgw_name
name_gw = var.name_gw
eip_name = var.eip_name
}
 
module "ec2" {

source = "./modules/ec2"
ami = var.ami
instance_type = var.instance_type
key_name = var.key_name
availability_zone_ec2 = var.availability_zone_ec2
prv_subnet_id = module.subnet.prv_subnet_id
security_group_id = module.SG.security_group_id 
server_name = var.server_name
Department = var.Department
description_eni = var.description_eni
eni_name = var.eni_name 
} 