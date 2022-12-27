# The ```provider``` Meta-Argument
1. The `provider` meta-argument specifies which provider configuration to use for a resource, overriding Terraform's default behavior of selecting one based on the resource type name.
2. Its value should be an unquoted <PROVIDER>.<ALIAS> reference.

In this demo we created two VPC, one is US region and another is in EU region.
e.g.

```
resource "aws_vpc" "aws-eu-vpc" {
  cidr_block = "10.10.88.0/22"
  provider = aws.aws-eu-region # Access provider using alias.
}
```