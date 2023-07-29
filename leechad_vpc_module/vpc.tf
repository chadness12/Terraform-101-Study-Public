resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}


resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  count = length(var.cidr_list)
  cidr_block        = var.cidr_list[count.index]
  availability_zone = var.az_list[count.index]
  tags = {
    Name = "Challange2_subnet_${var.az_list[count.index]}"
  }
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}



