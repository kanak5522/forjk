
provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "t123_state" {
  bucket = "kc-buck"
  acl    = "private"
}

resource "aws_dynamodb_table" "tlock" {
  name           = "kclk"
  hash_key        = "LockID"
  read_capacity   = 1
  write_capacity  = 1
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_instance" "newinnnt" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}

output "bucket_name" {
  value = aws_s3_bucket.tlock.bucket
}
