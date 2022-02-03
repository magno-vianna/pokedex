resource "aws_s3_bucket" "my-first-bucket" {
  bucket = "my-s3-mvianna-lab"
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}