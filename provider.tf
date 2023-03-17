provider "aws" {
    region = "${var.region}"
}
terraform {
    backend "s3" {
        bucket = "dk97502400"
        key = "terraform15.tfstate"
        region = "ap-northeast-1"
    }
}



