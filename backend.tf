# terraform {
#   backend "s3" {
#     bucket         = "nobuck"
#     key            = "terraform/state.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "nolock"
#     encrypt        = true
#   }
# }
