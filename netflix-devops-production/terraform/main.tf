module "jenkins_sg" {
  source = "./modules/security-group"

  name = "jenkins-sg"

  ingress_rules = [
    {
      from_port = 8080
      to_port   = 8080
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    },
    {
      from_port = 22
      to_port   = 22
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    }
  ]
}

module "app_sg" {
  source = "./modules/security-group"

  name = "app-sg"

  ingress_rules = [
    {
      from_port = 80
      to_port   = 80
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    },
    {
      from_port = 22
      to_port   = 22
      protocol  = "tcp"
      cidr      = "0.0.0.0/0"
    }
  ]
}

module "jenkins_ec2" {
  source = "./modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  sg_id         = module.jenkins_sg.sg_id
  name          = "Jenkins-Server"
}

module "app_ec2" {
  source = "./modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  sg_id         = module.app_sg.sg_id
  name          = "Netflix-App-Server"
}
