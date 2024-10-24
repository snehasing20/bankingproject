resource "aws_instance" "production" {
  ami                    = "ami-0da424eb883458071"
  key_name               = "terraforminstances"
  vpc_security_group_ids = ["sg-038344d919e2dc655"]  
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "production-server"
  }
}
