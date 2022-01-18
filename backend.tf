#to set up the remote backend
terraform {
  backend "s3"{
      bucket = "terraform-remote-state-kuragrp5"
      key = "inventorize/infrastructure.tfstate"
      region = "us-east-1"
      dynamodb_table = "gr5-terraform-lock"
  }
}