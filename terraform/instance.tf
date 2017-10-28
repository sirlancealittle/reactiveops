data "template_file" "init" {
    template                = "${ file( "templates/init.sh.tmpl" ) }"
    vars {
        public_key          = "${ var.public_key }"
    }
}

resource "aws_instance" "webserver" {
#    ami                     = "module.ubuntu.ami_id"
    ami                     = "ami-97e953f8"
    instance_type           = "${ var.webserver.["instance_type"] }"

    security_groups = [
        "${ aws_security_group.http-80.name }",
        "${ aws_security_group.ssh-22.name }",
        "${ aws_security_group.icmp.name }",
        "${ aws_security_group.outbound_all.name }"
    ]

    user_data               = "${ data.template_file.init.rendered }"

    tags {
        Name                = "webserver"
        Company             = "reactiveops"
        Author              = "lance-smith"
    }

    associate_public_ip_address = true
}
