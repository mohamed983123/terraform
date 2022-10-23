resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  }

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.sub4.id
  route_table_id = aws_route_table.example.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.sub3.id
  route_table_id = aws_route_table.example.id
}

