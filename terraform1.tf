// Code to mention provider and version of depedencies

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

// Code to save keys to connect to AWS account

variable "TF_ACCESS_KEY" {
  type        = string
  sensitive = true
}

variable "TF_SECRET_KEY" {
  type        = string
  sensitive = true
}

provider "aws" {
  region     = "ap-south-1"
  access_key = var.TF_ACCESS_KEY
  secret_key = var.TF_SECRET_KEY
}
