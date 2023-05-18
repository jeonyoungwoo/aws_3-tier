#VPC
resource "aws_vpc" "Terraform_VPC" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "Terraform_test"
  }
}