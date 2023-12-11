terraform {
    required_version = "< 0.11"
    required_providers {
        aws = "~> 2.0"
    }
}

provider "aws" {
    region = ""
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "myec2" {
    ami = ""
    instance_type = "t2.micro"
}