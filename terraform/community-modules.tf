# gets ami ids for ubuntu xenial
#

module "ubuntu" {
  source = "github.com/terraform-community-modules/tf_aws_ubuntu_ami"
  region = "eu-central-1"
  architecture = "amd64"
  distribution = "xenial"
  virttype = "hvm"
  storagetype = "ebs-ssd"
}
