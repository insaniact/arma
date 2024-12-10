# this  makes Tokyo  vpc.id which is aws_vpc.app1-vpc-A-Tokyo.id
resource "aws_vpc" "app1-vpc-A-tokyo" {
  cidr_block = var.tokyo_cidr_blocks[0].cidr_block
  #Unnecessary because Tokyo is the default provider
  /*provider =      aws.tokyo */ 
     
  tags = {
    Name = var.tokyo_cidr_blocks[0].name
    Service = "application1"
    Owner = "Mighty"
    Planet = "Maximus"
  }
}