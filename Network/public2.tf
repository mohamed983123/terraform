resource "aws_subnet" "sub3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3_cidr
  availability_zone = var.avzone_sb2

  tags = {
    Name = "public2"
  }
}