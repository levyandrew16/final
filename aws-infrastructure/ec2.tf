#Create EC2 Instance
resource "aws_instance" "appserver1" {
  ami                    = "ami-0d5eff06f840b45e9"
  instance_type          = "t2.micro"
  key_name               = "ClassKeyJenkins"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.application-subnet-1a.id
  #user_data              = file("install_apache.sh")

  tags = {
    Name = "App Server 1a"
  }

}

resource "aws_instance" "appserver2" {
  ami                    = "ami-0d5eff06f840b45e9"
  instance_type          = "t2.micro"
  key_name               = "ClassKeyJenkins"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.application-subnet-1b.id
  #user_data              = file("install_docker.sh")

  tags = {
    Name = "App Server 1b"
  }

}