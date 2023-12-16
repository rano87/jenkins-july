terraform {
   backend "s3" {
     bucket = "rano-bucket"
     key = "terraform.tfstate"
     region = "us-east-2"
   }
}
