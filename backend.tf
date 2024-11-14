terraform {
  backend "s3" {
    bucket         = "project.car"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "us-west-1"
    profile        = "terraform-user"
    dynamodb_table = "project.car-state-dynamo"
  }
}
