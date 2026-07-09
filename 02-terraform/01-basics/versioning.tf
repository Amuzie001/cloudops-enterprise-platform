resource "aws_s3_bucket_versioning" "cloudops_bucket_versioning" {
  bucket = aws_s3_bucket.cloudops_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
