# Define the public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.public_subnet_cidr}"
  availability_zone = "us-west-2b"

  tags {
    Name = "Web Public Subnet"
  }
}

# Define the private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.private_subnet_cidr}"
  availability_zone = "us-west-2c"

  tags {
    Name = "Database Private Subnet"
  }
}