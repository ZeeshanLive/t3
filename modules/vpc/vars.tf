variable "vpc_cidr" {
    default = "12.0.0.0/16"
}


variable "env" {
    default = "test"
}
variable "subnet_cidr1" {
    default = "12.0.1.0/24"
}

variable "subnet_cidr2" {
    default = "12.0.2.0/24"
}

variable vpcid {}

variable igw {}

variable pubsubid {}

variable pubrt {}