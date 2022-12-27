resource "aws_vpc" "aws-us-vpc" {
  cidr_block = "10.10.80.0/22"
}

resource "aws_vpc" "aws-eu-vpc" {
  cidr_block = "10.10.88.0/22"
  provider = aws.aws-eu-region
}