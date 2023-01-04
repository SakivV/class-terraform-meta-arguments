# The ```Create-Before-Destroy``` Meta-Argument
Terraform can help us create and replace things, but we have to make sure the replacements will work correctly.

1. The `create_before_destroy` meta-argument changes this behavior so that the new replacement object is created first, and the prior object is destroyed after the replacement is created. In short we can over-ride default behavior of resource.
2. `create_before_destroy` accepts boolean value i.e. `true or false`

## For demo purpose, follow below steps
1. Terraform `init`
2. Create EC2 instance with AZ `us-east-1a`.
3. Change AZ to `us-east-1b`
4. Run `terraform plan` and `terraform apply` observe changes.
5. Uncomment/add `lifecyle` meta-arugment with `create_before_destroy`.
6. Change AZ to `us-east-1a`
7. Run `terraform plan` and `terraform apply` observe changes.

