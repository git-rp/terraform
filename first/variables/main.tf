variable "myfirststringvar" {
  type    = string
  default = "This is the default"
}

variable "mynumvar" {
  type    = number
  default = 100
}

variable "isenable" {
  default = true

}

variable "mylist" {
  type    = list(number)
  default = [10, 20, 35]
}
variable "stringlist" {
  type    = list(string)
  default = ["test", "343"]
}

variable "mymapvar" {
  type = map(any)
  default = {
    key1 = "test"
    key2 = "test2"
  }
}


resource "aws_vpc" "myVpc" {
  cidr_block = "10.10.10.0/24"
  tags = {
    "name" = var.myfirststringvar
  }
}
variable "myinputvar" {
  type        = string
  description = "Please enter vpc name"
}

output "myoutput" {
  value = aws_vpc.myVpc.id
}

variable "mytuplevar" {
  type    = typle([string, number, string])
  default = ["var1", 0, "var2"]
}

variable "myobjectvar" {
  type = object({ name = string, port = list(number) })
  default = {
    name = "myport"
    port = [22, 80, 443]
  }
}
