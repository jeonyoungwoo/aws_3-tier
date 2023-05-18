#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = "ami-0a306845f8cfbd41a"
  instance_type          = "t2.micro"
  availability_zone      = "ap-northeast-2a"
  //vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  //user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server1"
  }

}

resource "aws_instance" "webserver2" {
  ami                    = "ami-0a306845f8cfbd41a"
  instance_type          = "t2.micro"
  availability_zone      = "ap-northeast-2c"
 // vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  //user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server2"
  }

}
