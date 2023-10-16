resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "IGW: For VPC Project"
  }
}
