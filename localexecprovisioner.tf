resource "aws_instance" "myec2" {
    ami = ""
    instance_type = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${aws_instance.web.private_ip} >> private_ips.txt"
    }
}