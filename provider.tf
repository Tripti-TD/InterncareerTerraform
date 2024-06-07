terraform {
  backend "s3" {
    bucket = "iacs3bucket123"
    key = "global/iacststefile/terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    
  }
}

provider "aws" {
    region = "us-west-2"
  
}

