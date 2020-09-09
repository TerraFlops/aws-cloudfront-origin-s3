# Terraflops Terraform Module
 
### AWS CloudFront S3 Origin

This is an intermediate module used in the definition of a CloudFront distribution. This module
defines an S3 origin allowing for type safety/default values not afforded by Terraform objects
natively. The bucket in question must already exist before using this module.

This module will produce the origin access identity used to access the bucket and also attach a
new policy granting the identity GetObject access to all objects in the bucket.

#### Example usage

```hcl-terraform
module "example" {
  source = "git::https://github.com/TerraFlops/aws-cloudfront-origin-s3?ref=v1.0"
  ...
}
```
