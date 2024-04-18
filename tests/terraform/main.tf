resource "aws_s3_bucket" "example" {
  bucket = "example"
}


resource "aws_s3_bucket" "example_log_bucket" {
  bucket = "example-log-bucket"
}

resource "aws_s3_bucket_logging" "example" {
  bucket = aws_s3_bucket.example.id

  target_bucket = aws_s3_bucket.example_log_bucket.id
  target_prefix = "log/"
}