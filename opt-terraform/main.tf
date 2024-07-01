# Variables
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {}
variable "private_key_path" {}
variable "region" {
	default = "eu-central-1"
}


# Provider
provider "aws" {
	region  = var.region
	access_key = var.aws_access_key
	secret_key = var.aws_secret_key
}


# RESOURCES
resource "aws_instance" "optimy_ec2" {
	instance_type          = "t2.micro"
	ami                    = "ami-0b17287b530129a4d"
	key_name               = var.key_name
	user_data              = file("userdata.tpl")
	
	tags = {
		Name = "Optimy Nginx"
	}
	vpc_security_group_ids = [aws_security_group.optimy_sg.id]
}