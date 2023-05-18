resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Terraform_VPC.id

  tags = {
    Name = "Terraform_IGW"
  }
}

# Create Web layber route table
resource "aws_route_table" "web_rt" {
  vpc_id = aws_vpc.Terraform_VPC.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Web_Routetable"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.web-subnet-1.id
  route_table_id = aws_route_table.web_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.web-subnet-2.id
  route_table_id = aws_route_table.web_rt.id
}