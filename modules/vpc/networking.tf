resource "aws_vpc" "ukvpc" {
  cidr_block = var.vpc_cidr
tags = {

    Name = var.env
}

}

resource "aws_subnet" "publicsubnet" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr1

  tags = {
    Name = var.env
  }
}

resource "aws_subnet" "privatesubnet" {
  vpc_id     = var.vpcid
  cidr_block = var.subnet_cidr2

  tags = {
    Name = var.env
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpcid

  tags = {
    Name = var.env
  }
}


resource "aws_route_table" "pubroutetable" {
  vpc_id = var.vpcid

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw
  }

  tags = {
    Name = var.env
  }
}

resource "aws_route_table_association" "publicroutetable" {
  subnet_id      = var.pubsubid
  route_table_id = var.pubrt
}


output "igw" {
    value = aws_internet_gateway.igw
}

output "ukvpc" {
    value = aws_vpc.ukvpc.id
}

output "publicsubnet" {
    value = aws_subnet.publicsubnet.id
}

output "privatesubnet" {
    value = aws_subnet.privatesubnet.id
}


output "privatert" {
    value = aws_route_table.pubroutetable
}