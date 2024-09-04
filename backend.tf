# terraform {
#   backend "s3" {
#     bucket         = "kc-buck"
#     key            = "terraform/state.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "kclk"
#     encrypt        = true
#   }
# }
