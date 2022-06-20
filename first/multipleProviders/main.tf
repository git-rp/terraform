provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  region = "us-west-1"
  alias  = "west"
}
resource "aws_instance" "multipleProvider" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
}

resource "aws_instance" "multipleProvider-west" {
  ami           = "ami-0d9858aa3c6322f73"
  instance_type = "t2.micro"
  provider      = "aws.west"
  depends_on    = [aws_default_vpc.default]
}

resource "aws_default_vpc" "default" {
  #cidr_block = "10.0.0.0/16"
  provider = "aws.west"
}