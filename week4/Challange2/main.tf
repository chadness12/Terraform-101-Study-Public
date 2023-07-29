module "vpc_moudle" {
  source    = "../../leechad_vpc_module"
  vpc_name  = "Challenge2_vpc"
  vpc_cidr  = "192.172.0.0/16"
  cidr_list = ["192.172.0.0/24", "192.172.1.0/24"]
}