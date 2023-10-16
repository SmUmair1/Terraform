provider "aws" {
   region                   = "eu-central-1"
   shared_credentials_files = ["/Users/umair/.aws/credentials"]
}

resource "aws_instance" "ec2_example" {
   ami           = "ami-0767046d1677be5a0"
   instance_type =  "%{ if var.instance_type != "" }${var.instance_type}%{ else }t2.micro%{ endif }"
   tags = {
           Name = "Terraform EC2"
   }
}
variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = ""
}
