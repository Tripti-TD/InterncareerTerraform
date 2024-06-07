resource "aws_instance" "iac-ec2" {
    ami = var.os
    instance_type = var.size
    security_groups = [aws_security_group.iac-sg.name]
    tags = {
        Name = "iac-instance"
    }
}

resource "aws_security_group" "iac-sg" {
    name = "sg using terraform"
    vpc_id = "vpc-0323d1c126e69771c"

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "iac-sg"
  }

}