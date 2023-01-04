# The ```ignore_changes``` Meta-Argument
By default, Terraform helps make sure that your real infrastructure is the same as what is planned. It checks if there are any differences and makes sure everything is the same. 
Terraform can be used to share the management of an object with another process. It will ignore certain parts of the object when making changes, to achive it we use `ignore_changes`.

1. The `ignore_changes` feature is intended to be used when a resource is created with references to data that may change in the future for e.g tags.
2. You can mention `ignore_changes` under `lifecycle` meta-argument.
`lifecycle {
    ignore_changes = [
        tags
    ]
}`
3. Instead of a list, the special keyword all may be used to instruct Terraform to ignore all attributes, which means that Terraform can create and destroy the remote object but will never propose updates to it.

## For demo purpose, follow below steps
1. Terraform `init`
2. Create Ec2 instance.
3. Add tags from Console.
4. Run `terraform plan` and `terraform apply` observe changes.
5. Uncomment/add `lifecyle` meta-arugment with `ignore_changes.` You can see in list we have mentioned tags.
6. Add again tags from Console
7. Run `terraform plan` and `terraform apply` observe changes.
