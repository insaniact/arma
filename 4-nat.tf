#Tokyo nat and eip
resource "aws_eip" "tokyo-eip" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "tokyo-nat" {
  allocation_id = aws_eip.tokyo-eip.id
  subnet_id     = aws_subnet.public-ap-northeast-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.tokyo-igw]
}
