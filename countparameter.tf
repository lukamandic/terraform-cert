provider "aws" {
    region = ""
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "instance-1" {
    ami = ""
    instance_type = ""
    count = 5
}

resource "aws_iam_user" "lb" {
    name = "loadbalancer.${count.index}"
    count = 5
    path = "/system/"
}

variable "elb_names" {
    type = list
    default = ["dev-loadbalancer", "stage-loadbalancer", "prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
    name = var.elb_names[count.index]
    count = 5
    path = "/system/"
}