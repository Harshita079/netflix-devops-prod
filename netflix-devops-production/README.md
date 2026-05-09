# Production Netflix DevOps Project

## Technologies Used

- AWS
- Terraform
- Jenkins
- Docker
- GitHub
- Nginx
- CloudWatch

## Features

- Modular Terraform
- CI/CD Pipeline
- Docker Deployment
- GitHub Webhook
- Cloud Monitoring
- Production Best Practices

## Commands

terraform init
terraform validate
terraform plan
terraform apply

docker build -t netflix-clone .

docker run -d -p 80:80 netflix-clone
