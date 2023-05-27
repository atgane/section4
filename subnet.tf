resource "aws_subnet" "myapp_sn_pub1" {
  vpc_id = aws_vpc.myapp_vpc.id
  cidr_block = "10.10.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "myapp_sn_pub1"
  }
}

resource "aws_subnet" "myapp_sn_pub2" {
  vpc_id = aws_vpc.myapp_vpc.id
  cidr_block = "10.10.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "myapp_sn_pub2"
  }
}

resource "aws_subnet" "myapp_sn_pri1" {
  vpc_id = aws_vpc.myapp_vpc.id
  cidr_block = "10.10.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "myapp_sn_pri1"
  }
}

resource "aws_subnet" "myapp_sn_pri2" {
  vpc_id = aws_vpc.myapp_vpc.id
  cidr_block = "10.10.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "myapp_sn_pri2"
  }
}