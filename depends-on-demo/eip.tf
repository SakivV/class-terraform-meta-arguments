resource "aws_eip" "class-eip-ec2" {
  depends_on = [aws_instance.class-ec2-server] # Meta arguments
  instance = aws_instance.class-ec2-server.id
}