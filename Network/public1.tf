resource "aws_subnet" "sub4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet4_cidr
  availability_zone = var.avzone_sb1

  tags = {
    Name = "public1"
  }
}