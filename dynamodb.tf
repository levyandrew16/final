provider "aws" {
  region = "us-east-1"
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