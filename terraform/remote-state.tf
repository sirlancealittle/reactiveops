# NOTE: cannot set remote state as provided IAM creds have no
#       s3 priviledges
#
/*
terraform {
    backend "s3" {
        bucket      = "reactiveops-lsmith-remotestate"
        key         = "terraform/coding-challenge/terraform.tfstate"
        region      = "eu-central-1"
    }
}
*/
