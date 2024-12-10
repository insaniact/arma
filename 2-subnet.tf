#These are   for  public

resource "aws_subnet" "public-ap-northeast-1a" {
  #tokyo is the default provider
  #provider = aws.tokyo
  vpc_id                  = aws_vpc.app1-vpc-A-tokyo.id
  cidr_block              = var.tokyo_cidr_blocks[1].cidr_block
  availability_zone       = var.tokyo_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.tokyo_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  #tokyo is the default provider
  #provider = aws.tokyo
  vpc_id                  = aws_vpc.app1-vpc-A-tokyo.id
  cidr_block              = var.tokyo_cidr_blocks[3].cidr_block
  availability_zone       = var.tokyo_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.tokyo_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  #tokyo is the default provider
  #provider = aws.tokyo
  vpc_id            = aws_vpc.app1-vpc-A-tokyo.id
  cidr_block        = var.tokyo_cidr_blocks[5].cidr_block
  availability_zone = var.tokyo_cidr_blocks[5].availability_zone

  tags = {
    Name    = var.tokyo_cidr_blocks[5].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
resource "aws_subnet" "private-ap-northeast-1c" {
  #tokyo is the default provider
  #provider = aws.tokyo
  vpc_id            = aws_vpc.app1-vpc-A-tokyo.id
  cidr_block        = var.tokyo_cidr_blocks[7].cidr_block
  availability_zone = var.tokyo_cidr_blocks[7].availability_zone

  tags = {
    Name    = var.tokyo_cidr_blocks[7].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
