variable "webserver" {
    type                = "map"
    default             = {
        instance_type               = "t2.micro"            # ec2 instance size
        associate_public_ip_address =  true                 # associates public ip address on launch
    }
}

variable "public_key" {
    type            = "string"
    default         = "c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCQVFEV1RlUEJGNUVGaTR4ekRsMk10cFdMemNBdHlCNHRKQkdLS09MeFZMUW83MmhvaTczMHMvczFhM2hoM0R1bXRCR3ZmNlovZkV0Ym1TeXU0QVR4dW41MnY3Z0hBU1RuOTNvWXlKNWVPNDRoNWJ2MFNKK3BRKzVIUDh4TC9MMmdOR3F0RmtoK3JEMzhDSlhMbFNJZXQ2ZGVrY0hVTlVKaFVERy9lNlJnWGp6S2ZkSWVWVS9lMGx6L0FjeDN2WCtzSG43RjJGMUpHTDJrOEszUkNYN2JXcVlXeDN2YTA2M0RIRmdidG1ZVlg4aVNxL2hybkNBTms5eWhabXJQd29VWnpZWDlQdDhOWmw4YnhicjUrY1dvZFdyMjNUaEc5eVNDeTVTb3pTQjNMVEhYdjRuYUN5RDNZb2FCUFR6K2NIVWhVQzN2eFRMK3lCL0pURVY4dkRJNXh2cmggbHNtaXRoQGxzbWl0aC0xM21icAo="
}
