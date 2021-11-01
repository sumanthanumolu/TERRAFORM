variable "cidr_block_vpc" {
	default = "10.40.0.0/16"
}
variable "vpc_name" {
 	default = "vpc-uswest2-itdevops"
}
variable "Department" {
	default = "Devops" 
}

variable "cidr_block_public" {
	default = "10.40.2.0/24"
}
variable "availability_zone_public" {
	default = "us-west-2a"
}
variable "public_subnet_name" {
	default = "itdevops-uswest2-pub"
}
variable "cidr_block_private" {
	default = "10.40.1.0/24"
}
variable "availability_zone_private" {
	default = "us-west-2a"
}
variable "private_subnet_name" {
	default = "itdevops-uswest2-prv"
}

variable "security_group_name" {
	default = "IT-Devops-sg" 
}
variable "security_group_description" {
	default = "security group for Devops"
}
variable "sg_name" {
	default =  "itDevops-sg" 
}

variable "route_cidr_block" {
	default = "0.0.0.0/0"
}
variable "pubroute_name" {
	default = "rtb-itdevops-pub"
}
variable "prvroute_name" {
	default = "rtb-itdevops-prv"
}

variable "natgw_name" {
	default = "itdevops-natgw"
}
variable "name_gw" {
	default = "itdevops-igw"
}
variable "eip_name" {
	default = "itdevops-eip" 
}
variable "ami" {
	default = "ami-013a129d325529d4d"
}
variable "instance_type" {
	default = "t3a.medium"  
}
variable "key_name" {
	default = "sonarqube"
}
variable "availability_zone_ec2" {
	default = "us-west-2a"
}
variable "server_name" {
	default = "sonarqube"
  
}
variable "description_eni" {
	default = "Network interface for Devops"
}
variable "eni_name" {
	default = "itdevops-eni" 
}