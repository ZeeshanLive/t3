resource "aws_vpc" "ukvpc" {
  cidr_block = var.vpc_cidr
tags = {

    Name = var.env
}

}

resource "aws_subnet" "subnet1" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr1

  tags = {
    Name = var.env
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr2

  tags = {
    Name = var.env
  }
}

output "ukvpc" {
    value = aws_vpc.ukvpc.id
}

output "uksubnet1" {
    value = aws_subnet.subnet1.id
}

output "uksubnet2" {
    value = aws_subnet.subnet2.id
}
