
provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "t12345_state" {
  bucket = "nobuckk"
  acl    = "private"
}

resource "aws_dynamodb_table" "ttlock" {
  name           = "noolock"
  hash_key        = "LockID"
  read_capacity   = 1
  write_capacity  = 1
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_instance" "newinnn3t" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}


resource "aws_instance" "n3t" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "net" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}
output "bucket_name" {
  value = aws_s3_bucket.t12345_state.bucket
}
