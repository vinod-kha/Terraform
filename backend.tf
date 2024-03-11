terraform {
  backend "s3" {
    bucket         = "s3-bucket-for-backend" # change this
    key            = "vinu/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "vinod-ddb-terraform-lock"
  }
}
