resource "aws_s3_bucket" "original_images" {
  bucket        = var.source_bucket_name
  force_destroy = var.force_destroy

  tags = {
    Name        = var.source_bucket_name
    Environment = var.environment
    Purpose     = "Source images storage"
  }
}


resource "aws_s3_bucket" "processed_images" {
  bucket        = var.processed_bucket_name
  force_destroy = var.force_destroy

  tags = {
    Name        = var.processed_bucket_name
    Environment = var.environment
    Purpose     = "Source images storage"
  }
}


# Configure versioning for source bucket
resource "aws_s3_bucket_versioning" "source_versioning" {
  bucket = aws_s3_bucket.original_images.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}


# Configure versioning for source bucket
resource "aws_s3_bucket_versioning" "processed_versioning" {
  bucket = aws_s3_bucket.processed_images.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}


# # Block public access for source bucket
# resource "aws_s3_bucket_public_access_block" "source_public_access_block" {
#   bucket                  = aws_s3_bucket.source.id
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }


# resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
#   bucket                  = aws_s3_bucket.source.id # Reference the bucket resource
#   block_public_acls       = true                    # Block public ACLs
#   block_public_policy     = true                    # Block public policies
#   ignore_public_acls      = true                    # Ignore public ACLs
#   restrict_public_buckets = true                    # Restrict public bucket policies
# }



# resource "aws_s3_bucket_cors_configuration" "my_bucket_cors" {
#   bucket = aws_s3_bucket.source.id # Reference the bucket resource
#   cors_rule {
#     allowed_headers = ["Authorization", "Content-Type", "Origin"] # Example headers
#     allowed_methods = ["GET", "PUT", "POST", "DELETE"]            # Example methods
#     allowed_origins = ["https://example.com"]                     # Example origins
#     expose_headers  = ["ETag"]                                    # Example headers to expose
#     max_age_seconds = 3000                                        # Example max age
#   }
# }

# # Correct encryption configuration for AWS provider v5+
# resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
#   bucket = aws_s3_bucket.source.id

#   rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm = "AES256"  # or "aws:kms" if you need KMS encryption
#     }
#   }
# }




