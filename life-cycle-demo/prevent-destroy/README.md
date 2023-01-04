# The ```prevent_destroy``` Meta-Argument
 
 1. Option `prevent_destroy` used as a measure of safety against the accidental replacement of objects that may be costly to reproduce, such as database instances. However, it will make certain configuration changes impossible to apply, and will prevent the use of the terraform destroy command once such objects are created, and so this option should be used sparingly.


## For demo purpose, follow below steps
1. Terraform `init`
2. Create Ec2 instance.
3. Uncomment/add `lifecyle` meta-arugment with `prevent_destroy.` You can see in list we have mentioned tags.
4. Run `terraform plan` and `terraform apply` observe changes.
