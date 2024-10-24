resource "aws_instance" "production" {
  ami                    = "ami-0e86e20dae9224db8"
  key_name               = "asg"
  vpc_security_group_ids = ["sg-038344d919e2dc655"]  
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "production-server"
  }
}
