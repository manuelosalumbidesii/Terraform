terraform {
  backend "s3" {
    bucket  = "sample-tfstate-file"
    key     = "envs/dev/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}


provider "aws" {
  region = "us-east-2"
}
