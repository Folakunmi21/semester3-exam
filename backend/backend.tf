

#terraform {
 # backend "s3" {
 #   bucket         = "socksappbucket"
 #   key            = "terraform.tfstate"
 #   region         = "us-west-1"
 #   dynamodb_table = "sockapptable"
 # }
#}

#resource "aws_s3_bucket" "socksappbucket" {
#  bucket   = "socksappbucket"

#  lifecycle {
#    prevent_destroy = true
#  }


#versioning {
#  enabled = true
# }
#}
#resource "aws_s3_bucket_server_side_encryption_configuration" "server-side-encryp" {
#  bucket = aws_s3_bucket.socksappbucket.id


#  rule {
#    apply_server_side_encryption_by_default {
#      sse_algorithm     = "AES256"
#    }
#  }
#}

#resource "aws_dynamodb_table" "statelock-table" {
#  name             = "statelock-table"
#  hash_key         = "LockID"
#  billing_mode     = "PAY_PER_REQUEST"

#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}
