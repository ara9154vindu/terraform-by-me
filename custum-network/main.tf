resource "aws_vpc" "vindu-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "name" {
  vpc_id = aws_vpc.vindu-vpc.id
  cidr_block = "10.0.0.0/24"
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vindu-vpc.id
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vindu-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table_association" "name" {
  route_table_id = aws_route_table.public.id
  subnet_id = aws_subnet.name.id
}
resource "aws_security_group" "name" {
  vpc_id = aws_vpc.vindu-vpc.id
  name = "allow tls"
  tags = {
    name = "custum_sg"
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}