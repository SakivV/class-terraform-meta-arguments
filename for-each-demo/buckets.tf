# Create S3 Bucket per environment with for_each and maps
resource "aws_s3_bucket" "cloudmagic-bucket" {
  for_each = {
    dev  = "pr-aws-bucket-20230102"
    test = "pr-aws-bucket-20230102"
    prod = "pr-aws-bucket-20230102"
  }
  bucket = "${each.key}-${each.value}"
  acl    = "private"
  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
  }
}