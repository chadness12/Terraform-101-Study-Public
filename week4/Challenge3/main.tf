
module "vpc_moudle" {
  source    = "../../leechad_vpc_module"
  vpc_name  = "Challenge3_vpc"
  vpc_cidr  = "192.172.0.0/16"
  cidr_list = ["192.172.0.0/24", "192.172.1.0/24"]
}

module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "Challange3-sg"
  vpc_id      = module.vpc_moudle.vpc_id
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}

