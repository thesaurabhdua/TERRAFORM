terraform {
  backend "s3" {
    bucket = "terra-saurabh-bucket"
    key = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  shared_credentials_file = "/home/saurabh/.aws/credentials"
  profile = "america"
  region = "us-east-1"
}
resource "aws_instance" "firstvm" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  tags = {
    name = "firstvm"
  }
}
