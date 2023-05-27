resource "aws_eip" "myapp_eip_nat" {
  tags = {
    Name = "myapp_eip_nat"
  }
}