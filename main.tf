provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "vinod" {
  instance_type = var.instance_type_value
  ami = var.ami_value # Ubuntu 22.04
  tags = {
    Name = "Terraform-Instance-mumbai"
  }
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.aws_s3_bucket #s3 remote backend for storing statefiles
}

#### You can write the varibales for dynamodb as well 
resource "aws_dynamodb_table" "vinod-ddb-terraform-lock" {
   name = "terraform-lock-vinod"
   hash_key = "LockID"
   read_capacity = 20
   write_capacity = 20

   attribute {
      name = "LockID"
      type = "S"
   }
}
