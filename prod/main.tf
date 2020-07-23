provider "aws" {
    region = "us-east-1"
}

module "my_vpc" {
    source= "../modules/vpc"
    vpc_cidr = "13.0.0.0/16"
    env = "prod3"
    subnet_cidr1 = "13.0.1.0/24"
    subnet_cidr2 = "13.0.2.0/24"
    vpcid= module.my_vpc.ukvpc
    igw = module.my_vpc.igw
    pubsubid = module.my_vpc.publicsubnet
    pubrt = module.my_vpc.pubrt

}
