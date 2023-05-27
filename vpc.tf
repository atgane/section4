resource "aws_vpc" "myapp_vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "myapp_vpc"
  }
}