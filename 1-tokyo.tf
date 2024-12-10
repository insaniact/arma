#declare variables
variable "tokyo_cidr_blocks" {
    description = "cidr blocks for vpc and subnets"
    type =list (object ({
    cidr_block = string
    name = string
    region = string
    image_id = string
    availability_zone = string
  }))
}

