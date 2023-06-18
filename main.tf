terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
  #   Configuração para remote state em S3 Bucket
  #   backend "s3" {
  #     bucket = "mybucket"
  #     key    = "aws-vm/terraform.tfstate"
  #     region = var.location
  #   }
}

provider "aws" {
  region = var.location
  default_tags {
    tags = {
      owner      = "carlossfb"
      managed-by = "terraform"
    }
  }
}

# Data source para buscar as outputs da VPC através do remote state
# data "terraform_remote_state" "network" {
#   backend = "s3"
#   config = {
#       bucket = "mybucket"
#       key    = "aws-vpc/terraform.tfstate"
#       region = var.location
#   }
# }
