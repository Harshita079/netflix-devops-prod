terraform {
  backend "s3" {
    bucket = "harshita-netflix-tfstate-2026"
    key    = "production/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
