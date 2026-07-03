resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terralabs-snaider-s3-demo-01"

  tags = {
    Name        = "Bucket Snaider"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.demo_bucket.id

  block_public_acls   = false
  block_public_policy = false
  ignore_public_acls  = false
}
