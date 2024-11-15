resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-lock" # Changed to match backend configuration
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

