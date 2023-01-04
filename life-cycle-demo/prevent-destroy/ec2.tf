resource "aws_instance" "class-instance" {
   ami = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "class-ec2-server" 
  }
  # lifecycle {
  #   prevent_destroy =  true
  # }

}