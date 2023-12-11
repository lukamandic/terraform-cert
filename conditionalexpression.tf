variable "istest" {}

resource "aws_instance" "dev" {
    ami = ""
    instance_type = "t2.micro"
    count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
    ami = ""
    instance_type = "t2.large"
    count = var.istest == true ? 0 : 1
}