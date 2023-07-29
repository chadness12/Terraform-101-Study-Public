terraform {
    backend "s3" {
        bucket = "leechad-tfstate"
        key = "work2/terraform.tfstate"
        region = "ap-northeast-2"
        encrypt = true
        dynamodb_table = "state-lock"
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "ap-northeast-2"
}