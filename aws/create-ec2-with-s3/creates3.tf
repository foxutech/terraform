## Create S3 bucket 
resource "aws_s3_bucket" "test_bucket" {
    bucket = "bucket-name"
    acl = "private"
    versioning {
            enabled = true
    }
    tags {
        Name = "bucket-name"
    }
}