resource "aws_subnet" "web-subnet-1" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web-1a"
  }
}

resource "aws_subnet" "web-subnet-2" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web-2b"
  }
}

# Create Application Private Subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = "10.10.11.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Application-1a"
  }
}

resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = "10.10.12.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = false

  tags = {
    Name = "Application-2b"
  }
}

# Create Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.Terraform_VPC.id
  cidr_block        = "10.10.21.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "Database-1a"
  }
}

resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.Terraform_VPC.id
  cidr_block        = "10.10.22.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "Database-2b"
  }
}