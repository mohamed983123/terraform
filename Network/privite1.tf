resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  availability_zone = var.avzone_sb1

  tags = {
    Name = "privite1"
  }
}
