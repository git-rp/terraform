provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myEc2" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags = {
    name = "my server"
  }
}
data "aws_instance" "myserver" {
  filter {
    name   = "tag.name"
    values = ["my server"]
  }
}

output "myservers" {
  value = data.aws_instance.myserver.availability_zone
}
