resource "aws_instance" "class-ec2-server" {
  ami = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  count = 3 # Meta argument. This will create 3 EC2 instance
  tags = {
    "Name" = "class-ec2-server-${count.index}" 
  }
}