provider "aws" {}

module "s3" {
  source = "../../modules/s3"
  env    = var.env
  oai_arn = module.cloudfront.oai_arn
}

module "cloudfront" {
  source = "../../modules/cloudfront"
  env    = var.env
  frontend_bucket_id = module.s3.frontend_bucket.id
  frontend_domain    = module.s3.frontend_bucket.bucket_regional_domain_name
}
