The `for_each` Meta-Argument
1. Create multiple set of similar resource by writing single block.
2. It can be used with modules and with every resource type.
3. If a resource or module block includes a `for_each` argument whose value is a map or a set of strings, Terraform creates one instance for each member of that map or set.
4. You cannot use `count` and `for_each` at the same time in the same module or resource block.
5. If the resources you are provisioning are identical or nearly identical, then `count` is a safe bet. However, **if elements of the resources change between the different instances**, then `for_each` is the way to go.