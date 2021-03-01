#Configuration S3 Bucket in AWS

#__author__ = "Ronald Saenz"
#__status__ = "Development"
#__copyright__ = "Copyright 2021, RSAENZ"
#__maintainer__ = "Ronald Saenz"
#__email__ = "ronaldsaenz88@gmail.com"
#__version__ = "0.0.4"

terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "RonaldSaenz-AWS"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "aws_s3"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

#Folder AWS and gets region
provider "aws" {
  profile = "default"
  region = var.region
}

#Create a S3 Bucket
resource "aws_s3_bucket" "tf_test" {
  bucket = var.bucket
  acl = var.acl

  tags = {
    Name = var.tags_name
    Owner = var.tags_owner
  }
}