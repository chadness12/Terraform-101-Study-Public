
resource "aws_s3_bucket" "tfstate"{
 bucket = "leechad-tfstate"

 versioning {
  enabled = true
 }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
 name= "state-lock"
 hash_key = "LockID"
 billing_mode = "PAY_PER_REQUEST"

 attribute{
  name = "LockID"
  type = "S"
 }
}