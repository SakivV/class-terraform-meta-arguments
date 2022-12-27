# The ```depends_on``` Meta-Argument
1. The Terraform `depends_on` meta-argument is used to define explicit dependencies between resources. 
2. It ensures that resources are created in the correct order, and that any changes to one resource are applied before changes to any other resources that depend on it.

In this demo we created dependency between Elastic IP and EC2 instance. First EC2 instance will get created and later Elastic IP will get created.

```
resource "aws_eip" "class-eip-ec2" {
  depends_on = [aws_instance.class-ec2-server] # Meta arguments
  instance = aws_instance.class-ec2-server.id
}

```