provider "aws" "sample" {
	region = var.region
}

module "ec2_instance" {
  source         = "./module"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
}

module "aws_instance" {
  source         = "./module"
  ami           = var.ami_id
  instance_type = var.type

  tags = {
    Name = var.name
  }
}
