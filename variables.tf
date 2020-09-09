variable "bucket" {
  description = "The S3 bucket that will be used as the origin"
}

variable "path" {
  description = "An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket"
  type = string
  default = ""
}

variable "custom_headers" {
  description = "Optional map of headers that will be sent to the origin"
  type = map(string)
  default = {}
}