terraform {
  backend "s3" {
    bucket         = "statemetdatabucket"
    region         = "ap-south-1"
    key            = "terraform-assignment/terraform.tfstate"
 }
  
}