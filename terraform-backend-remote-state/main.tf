provider "aws" {
  region                   = "eu-central-1"
  shared_credentials_files = ["/Users/umair/.aws/credentials"]
}

terraform {
    backend "s3" {
        bucket = "my-terraform-s3-bucket"
        key    = "/terraform/remote/s3/terraform.tfstate"
        region     = "eu-central-1"
        #access_key = ""
        #secret_key = ""
    }
}


resource "aws_instance" "ec2_example" {

    ami = "ami-0767046d1677be5a0" 

    instance_type = "t2.micro"

    tags = {
      Name = "EC2 Instance with remote state"
    }
}
