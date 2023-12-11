variable "instance_type" {}

variable "image_id" {
    type = string
}

variable "elb_name" {
    type = string
}

variable "az" {
    type = list
}

variable "timeout" {
    type = number
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        us-south-1 = "t2.small"
    }
}

variable "list" {
    type = list
    default = ["m5.large","m5.xlarge","t2.medium"]
}