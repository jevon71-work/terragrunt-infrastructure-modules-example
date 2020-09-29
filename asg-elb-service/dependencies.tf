# ---------------------------------------------------------------------------------------------------------------------
# USE THE DEFAULT VPC AND SUBNETS
# To keep this example simple, we use the default VPC and subnets, but in real-world code, you'll want to use a
# custom VPC.
# ---------------------------------------------------------------------------------------------------------------------

data "aws_vpc" "default" {
  default = false
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.default.id

  tags = {
    Description = "private_subnet"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.default.id

  tags = {
    Description = "public_subnet"
  }
}
