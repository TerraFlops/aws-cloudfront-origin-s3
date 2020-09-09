# Create CloudFront origin access identity for the bucket
resource "aws_cloudfront_origin_access_identity" "origin" {
  comment = "CloudFront origin access identity"
}
