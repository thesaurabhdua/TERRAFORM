provider "aws" {
  region = "ap-south-1"
}

variable "aws_ami" {
  default = {
    "ap-south-1" = "ami-010aff33ed5991201"
    "us-west-1" = "ami-04468e03c37242e1e"
  }
}
variable "region" {
  default = "ap-south-1"
}

resource "aws_instance" "web" {
  ami = lookup(var.aws_ami,var.region)
  count = 1
  instance_type = "t2.micro"
}
