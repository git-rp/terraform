provider "aws" {
  region = "us-east-1"
}

module "ec2module" {
  source = "./EC2"
}


output "insidemodule" {
  value = aws_instance.myEc2.id
}
