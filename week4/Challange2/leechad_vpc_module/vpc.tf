#vpc 선언
resource "aws_vpc" "Challange2_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Challange2"
  }
}


resource "aws_subnet" "Challange2_subnet_a" {
  vpc_id            = aws_vpc.Challange2_vpc.id
  count = length(var.cidr_list)
  cidr_block        = var.cidr_list[count.index]
  availability_zone = var.az_list[count.index]
  tags = {
    Name = "Challange2_subnet_${var.az_list[count.index]}"
  }
}



