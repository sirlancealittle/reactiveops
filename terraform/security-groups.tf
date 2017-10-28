resource "aws_security_group" "ssh-22" {
    ingress {
        from_port           = 22
        to_port             = 22
        protocol            = "tcp"
        cidr_blocks         = ["67.176.22.202/32"]
    }
}

resource "aws_security_group" "http-80" {
    ingress {
        from_port           = 80
        to_port             = 80
        protocol            = "tcp"
        cidr_blocks         = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "icmp" {
    ingress {
        from_port           = -1
        to_port             = -1
        protocol            = "icmp"
        cidr_blocks         = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "outbound_all" {
    egress {
        from_port           = 0
        to_port             = 0
        protocol            = "-1"
        cidr_blocks         = ["0.0.0.0/0"]
    }
}
