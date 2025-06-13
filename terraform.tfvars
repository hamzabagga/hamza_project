vpc_name   = "hamza_vpc"
cidr_block = "10.0.0.0/16"

public_subnets = [
  {
    name              = "public-subnet-1"
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "public-subnet-2"
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-1b"
  }
]
private_subnets = [
  {
    name              = "private-subnet-1",
    cidr_block        = "10.0.3.0/24",
    availability_zone = "us-east-1a"
  },
  {
    name              = "private-subnet-2",
    cidr_block        = "10.0.4.0/24",
    availability_zone = "us-east-1b"
  }
]
igw_name = "hamza-igw"

eip_name         = "hamza-nat-eip"
nat_gateway_name = "hamza-nat-gateway"
cluster_name     = "hamza-eks-cluster"