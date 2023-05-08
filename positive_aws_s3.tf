resource "aws_s3_bucket" "positive2" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  server_side_encryption_configuration  {
    rule  {
      apply_server_side_encryption_by_default  {
        kms_master_key_id = "AKIAW3KOLCG3KO66TESTT"
        sse_algorithm     = "AES256"
      }
    }
  }

  versioning {
    mfa_delete = true
  }
}
