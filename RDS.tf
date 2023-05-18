resource "aws_db_instance" "Terraform_db" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.Terraform_db.id
  engine                 = "mysql"
  engine_version         = "8.0.32"
  instance_class         = "db.t2.micro"
  multi_az               = true
  name                   = "ywjeon"
  username               = "admin"
  password               = "Goodmit1!"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.database-sg.id]
}

resource "aws_db_subnet_group" "Terraform_db" {
  name       = "ywjeon"
  subnet_ids = [aws_subnet.database-subnet-1.id, aws_subnet.database-subnet-2.id]

  tags = {
    Name = "My DB subnet group"
  }
}
