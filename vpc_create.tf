# Define our VPC

resource "aws_vpc" "myvpc" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "my-test-vpc"
  }
}