provider "aws" {
    region = ""
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "myec2" {
    ami = ""
    instance_type = ""
}

terraform taint aws_instance.myec2