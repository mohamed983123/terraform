resource "aws_subnet" "sub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
  availability_zone = var.avzone_sb2

  tags = {
    Name = "privite2"
  }
}