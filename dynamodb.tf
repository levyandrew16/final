provider "aws" {
  region = "us-east-1"
}

#to set up the remote backend
terraform {
  backend "s3"{
      bucket = "terraform-remote-state-kuragrp5"
      key = "inventorize/infrastructure.tfstate"
      region = "us-east-1"
      dynamodb_table = "gr5-terraform-lock"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = "gr5-terraform-lock2"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  

  attribute {
    name = "LockID"
    type = "S"
  }
}