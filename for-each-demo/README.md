The `for_each` Meta-Argument
1. Create multiple set of similar resource by writing single block.
2. It can be used with modules and with every resource type.
3. If a resource or module block includes a `for_each` argument whose value is a map or a set of strings, Terraform creates one instance for each member of that map or set.