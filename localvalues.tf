locals {
    common_tags = {
        Owner = "Devops Team"
        service = "backend"
    }
}

resource "aws_instance" "app-dev" {
    ami = ""
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "db-dev" {
    ami = ""
    instance_type = "t2.small"
    tags = local.common_tags
}