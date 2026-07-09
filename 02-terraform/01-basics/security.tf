resource "aws_s3_bucket_server_side_encryption_configuration" "cloudops_bucket_encryption" {
  bucket = aws_s3_bucket.cloudops_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "cloudops_bucket_public_access" {
  bucket = aws_s3_bucket.cloudops_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}
