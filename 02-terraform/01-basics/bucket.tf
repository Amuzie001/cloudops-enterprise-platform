resource "aws_s3_bucket" "cloudops_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "CloudOps Demo Bucket"
    Environment = "Learning"
    Project     = "CloudOps Enterprise Platform"
    Owner       = "Amuzie Ebeyi"
  }
}
