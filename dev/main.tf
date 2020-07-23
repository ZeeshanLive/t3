provider "aws" {
    region = "us-east-1"
}

module "my_vpc" {
    source= "../modules/vpc"
    vpc_cidr = "11.0.0.0/16"
    env = "dev"
    subnet_cidr1 = "11.0.1.0/24"
    subnet_cidr2 = "11.0.2.0/24"
    vpcid= module.my_vpc.ukvpc
}