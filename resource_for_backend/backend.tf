terraform {
  backend "s3" {
    bucket = "aravindcheggjubydevops" #name of the bucket
    region = "ap-south-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dunamo"
    encrypt = true
  }
}