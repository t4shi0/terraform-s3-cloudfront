output "domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "oai_arn" {
  value = aws_cloudfront_origin_access_identity.s3_distribution.iam_arn
}
