resource "aws_ec2_transit_gateway" "nvirginia_TGW" {
    description = "nvirginia_TGW"
    tags = {
      Name = "nvirginia_TGW"
    }
}

#Transit Gateway Attachment to Tokyo VPC
resource "aws_ec2_transit_gateway_vpc_attachment" "nvirginia_attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.nvirginia_TGW.id
  subnet_ids = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id,
    aws_subnet.private-us-east-1c.id
  ]
  vpc_id = aws_vpc.nvirginiavpc.id

  tags = {
    Name = "nvirginia_attachment"
  }
}