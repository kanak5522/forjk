
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "newinnn3t" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}


resource "aws_instance" "n3t" {
    ami = "ami-04e49d62cf88738f1"
    instance_type = "t2.micro"
  
}
output "bucket_name" {
  value = aws_s3_bucket.t12345_state.bucket
}
