provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2Instace" {
  ami             = "ami-0022f774911c1d690"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.mySG.name]
}
resource "aws_eip" "myEIP" {
  instance = aws_instance.ec2Instace.id
}
output "myouteip" {
  value = aws_eip.myEIP.public_ip
}

resource "aws_security_group" "mySG" {
  name = "Allow HTTPS"
  ingress {
    description = "Allow https from any where"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
