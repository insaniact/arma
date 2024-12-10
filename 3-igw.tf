#IGW for tokyo
resource "aws_internet_gateway" "tokyo-igw" {
  vpc_id = aws_vpc.app1-vpc-A-tokyo.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "Darkness"
  }
}
