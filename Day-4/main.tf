provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "srinivas" {
    ami = "ami-0b6c6ebed2801a5cb" # replace this
    instance_type = "t2.micro"
    subnet_id = "subnet-025a5f9a2586db230" # replace this
  
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "srinivas-bucket-terraform"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}