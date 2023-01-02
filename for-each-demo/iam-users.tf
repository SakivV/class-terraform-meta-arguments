variable "user-list" {
  default = ["ketan", "akash", "vikas", "rahul"]
}
resource "aws_iam_user" "pr-create-user" {
  for_each = toset(var.user-list)
  name     = each.key
}