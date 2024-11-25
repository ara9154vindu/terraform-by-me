resource "aws_s3_bucket" "name" {
  bucket = "aravindcheggjubydevops"
}

resource "aws_dynamodb_table" "name" {
  name = "terraform-state-lock-dunamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "creation" {
  bucket = "wertyuopjhgfghj"
}