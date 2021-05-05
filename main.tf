terraform {
  required_version = ">= 0.14.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "3.38.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  backend "s3" {

  }

}



provider "aws" {
  region = "eu-central-1"
}


resource "random_pet" "website" {
  length = 5
}
