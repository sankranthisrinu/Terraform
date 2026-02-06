terraform {
  backend "s3" {
    bucket = "srinivas-bucket-terraform"
    region = "us-east-1"
    key = "srinu/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}