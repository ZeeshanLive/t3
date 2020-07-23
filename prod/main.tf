provider "aws" {
    region = "us-east-1"
}

module "my_vpc" {
    source= "../modules/vpc"
    vpc_cidr = "13.0.0.0/16"
    env = "prod"
    subnet_cidr1 = "13.0.1.0/24"
    subnet_cidr2 = "13.0.2.0/24"
    vpcid= module.my_vpc.ukvpc
}