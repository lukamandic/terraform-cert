resource "aws_instance" "myec2" {
    ami = ""
    instance_type = "t2.micro"
    key_name = "ex2-key"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    provisioner "remote-exec" {
        inline = [
            "sudo yum -y install nano"
        ]
    }

    provisioner "remote-exec" {
        when = destroy
        inline = ["sudo yum -y remove nano"]
    }

    connection {
        type = "ssh"
        user = "ec2-user"
        private_key = file("./ec2-key.pem")
        host = self.public_ip
    }
}