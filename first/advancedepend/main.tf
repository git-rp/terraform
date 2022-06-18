provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "DB" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
}
resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  depends_on = [
    aws_instance.DB
  ]
}
