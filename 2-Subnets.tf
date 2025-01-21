#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.nvirginiavpc.id
  cidr_block              = "10.131.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-1a"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.nvirginiavpc.id
  cidr_block              = "10.131.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-1b"
  }
}


resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.nvirginiavpc.id
  cidr_block              = "10.131.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-1c"
  }
}

#these are for private
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.nvirginiavpc.id
  cidr_block        = "10.131.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-us-east-1a"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.nvirginiavpc.id
  cidr_block        = "10.131.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-us-east-1b"
  }
}


resource "aws_subnet" "private-us-east-1c" {
  vpc_id            = aws_vpc.nvirginiavpc.id
  cidr_block        = "10.131.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "private-us-east-1c"
  }
}
