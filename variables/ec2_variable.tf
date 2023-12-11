provider "aws" {
    region      = "us-west-2"
    access_key  = "kkkkkkkeeeeeeeeeeeey"
    secret_key  = "kkkkkkkeeeeeeeeeeeey"
}

resource "aws_instance" "myec2" {
    ami = "ami-12222233333"
    instance_type = var.instance_type
}