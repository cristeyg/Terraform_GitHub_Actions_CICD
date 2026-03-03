provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "cristeydb"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "cristeydblocks"
    encrypt        = true
  }
}
