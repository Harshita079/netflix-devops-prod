#!/bin/bash

sudo apt update -y

sudo apt install -y openjdk-17-jdk docker.io git unzip wget awscli

sudo systemctl enable docker
sudo systemctl start docker

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y

sudo apt install -y jenkins

sudo usermod -aG docker jenkins

sudo systemctl enable jenkins
sudo systemctl start jenkins

wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip

unzip terraform_1.7.5_linux_amd64.zip

sudo mv terraform /usr/local/bin/

terraform -version

echo "Jenkins + Docker + Terraform Installed Successfully"