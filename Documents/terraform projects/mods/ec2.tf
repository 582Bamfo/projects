provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "dap" {
  ami   = "ami-0d729d2846a86a9e7"
  instance_type = "t2.micro"
}
