resource "aws_s3_bucket" "my-bkt" {
  bucket = "my-lct-bkt-302025"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "ACN-BKT"
    Environment = "Dev"
  }
}