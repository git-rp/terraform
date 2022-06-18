provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "myvpc_test" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_vpc" "secondvpc" {
  cidr_block = "10.229.0.0/16"
}
