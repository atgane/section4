resource "aws_nat_gateway" "myapp_nat" {
  allocation_id = aws_eip.myapp_eip_nat.id
  subnet_id = aws_subnet.myapp_sn_pub1.id

  tags = {
    Name = "myapp_nat"
  }

  depends_on = [ aws_internet_gateway.myapp_igw ]
}