resource "aws_route_table" "myprivite" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
  }

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.myprivite.id
}
resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.myprivite.id
}

