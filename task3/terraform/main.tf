resource "aws_ecr_repository" "app" {
  name                 = "my-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecs_cluster" "main" {
  name = "my-app-cluster"
}

# Add security policy to prevent accidental deletion
resource "aws_s3_bucket_policy" "state_bucket" {
  bucket = "my-tf-state-bucket"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:DeleteBucket"
        Resource  = "arn:aws:s3:::my-tf-state-bucket"
      }
    ]
  })
}
