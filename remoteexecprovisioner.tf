resource "aws_instance" "myec2" {
    ami = ""
    instance_type = "t2.micro"
    key_name = "terraform-key"

    connection {
        type = "ssh"
        user = "ec2-user"
        private_key = file("./terraform-key.pem")
        host = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "sudo amazon-linux-extras install nginx1",
            "sudo systemctl start nginx"
        ]
    }
}