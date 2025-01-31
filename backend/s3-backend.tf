resource "aws_s3_bucket" "terraform_state" {
  bucket = "your-deeoct-terraform-state-bucket"
  versioning {
    enabled = true
  }
  lifecycle_rule {
    id = "expire_old_versions"
    enabled = true
    noncurrent_version_expiration {
      days = 30
    }
    }
    tags = {
      Name = "Terraform state storage"
    }
    }
