provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0532be01f26a3de55"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-025a5f9a2586db230"
    key_name = "aws_login"
}