output "jenkins_public_ip" {
  value = module.jenkins_ec2.public_ip
}

output "app_public_ip" {
  value = module.app_ec2.public_ip
}
