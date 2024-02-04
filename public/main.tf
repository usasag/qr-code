terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "4.67.0"
        }
    }
    required_version = ">= 0.13"
}

provider "aws" {
    region = "sa-east-1"  # Replace with your desired region
}

resource "aws_s3_bucket" "aws_s3_bucket_website_configuration" {
    bucket = "qr-code-component"  # Replace with your desired bucket name
}

output "bucket_name" {
    value = aws_s3_bucket.aws_s3_bucket_website_configuration.id
}