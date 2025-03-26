provider "aws" {
  region = "us-east-2"
}

module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id            = "ami-0884d2865dbe9de4b" # Replace with the correct AMI
  instance_type     = "t2.medium"
  key_name          = "devkey"
  security_group_ids = [module.security_group.jenkins_sg_id, module.security_group.app_sg_id]
}
