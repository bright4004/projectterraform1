# Define VPC Variable

variable "aws-vpc-cidr"{
    type = string
    default = "192.0.0.0/16"

}

# Create VPC 

resource "aws_vpc" "tefle_vpc" {
  cidr_block       = var.aws-vpc-cidr
  instance_tenancy = "default"
  tags = {
      Name = "tefle_vpc"
      Terraform = "True"
  }
  
  }