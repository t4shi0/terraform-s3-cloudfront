resource "aws_s3_bucket" "frontend_bucket" {
  bucket = "${var.env}-terraform-sample-frontend"

  tags = {
    Environment = var.env
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "frontend_bucket" {
  bucket                  = aws_s3_bucket.frontend_bucket.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

data "aws_iam_policy_document" "frontend_bucket" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [var.oai_arn]
    }
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.frontend_bucket.arn}/*"]
  }
}

resource "aws_s3_bucket_policy" "frontend_bucket" {
  bucket = aws_s3_bucket.frontend_bucket.id
  policy = data.aws_iam_policy_document.frontend_bucket.json
}
