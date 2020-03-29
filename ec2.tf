variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY
    region = "us-east-1"
}

resource "aws_instance" "learn" {
    ami = "ami-2757f631"
    instance_type = "t2.micro"
}
