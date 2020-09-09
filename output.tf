# Retrieve the bucket we are connecting to
data "aws_s3_bucket" "origin" {
  bucket = var.bucket
}

locals {
  # Create the origin output
  origin = {
    domain_name = data.aws_s3_bucket.origin.bucket_regional_domain_name
    path = var.path
    custom_headers = var.custom_headers
    origin_access_identity = aws_cloudfront_origin_access_identity.origin.cloudfront_access_identity_path
  }
}

output "origin" {
  description = "S3 origin in format suitable for injection in CloudFront distribution module"
  value = local.origin
}

output "origin_access_identity" {
  description = "The newly created origin access identity ID"
  value = aws_cloudfront_origin_access_identity.origin.id
}

output "origin_access_identity_iam_arn" {
  description = "The newly created origin access identity IAM role ARN"
  value = aws_cloudfront_origin_access_identity.origin.iam_arn
}
