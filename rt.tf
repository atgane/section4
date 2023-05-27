resource "aws_route_table" "myapp_rt_pub1" {
  vpc_id = aws_vpc.myapp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myapp_igw.id
  }

  tags = {
    Name = "myapp_rt_pub1"
  }
}

resource "aws_route_table_association" "nyapp_rt_asso_pub1" {
  route_table_id = aws_route_table.myapp_rt_pub1.id
  subnet_id = aws_subnet.myapp_sn_pub1.id
}

resource "aws_route_table" "myapp_rt_pub2" {
  vpc_id = aws_vpc.myapp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myapp_igw.id
  }

  tags = {
    Name = "myapp_rt_pub2"
  }
}

resource "aws_route_table_association" "nyapp_rt_asso_pub2" {
  route_table_id = aws_route_table.myapp_rt_pub2.id
  subnet_id = aws_subnet.myapp_sn_pub2.id
}

resource "aws_route_table" "myapp_rt_pri1" {
  vpc_id = aws_vpc.myapp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.myapp_nat.id
  }
  
  tags = {
    Name = "myapp_rt_pri1"
  }
}

resource "aws_route_table_association" "nyapp_rt_asso_pri1" {
  route_table_id = aws_route_table.myapp_rt_pri1.id
  subnet_id = aws_subnet.myapp_sn_pri1.id
}

resource "aws_route_table" "myapp_rt_pri2" {
  vpc_id = aws_vpc.myapp_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.myapp_nat.id
  }
  
  tags = {
    Name = "myapp_rt_pri2"
  }
}

resource "aws_route_table_association" "nyapp_rt_asso_pri2" {
  route_table_id = aws_route_table.myapp_rt_pri2.id
  subnet_id = aws_subnet.myapp_sn_pri2.id
}