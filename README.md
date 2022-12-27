# Terraform Class Hands-On
Clone the repo as it is. 
## Meta Arguments
1. Provider : Refer Folder ``` provider-demo ```
2. Depends-On : Refer Folder ``` depends-on-demo ```
3. Count : Refer Folder ``` count-demo ```

### Common Step
In each demo we have to create one file i.e. ```version.tf``` file.
``` version.tf
 terraform {
  required_version = ">=1.2.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">=4.16.0"
    }
  }
}
```