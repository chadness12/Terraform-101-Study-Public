module "vpc_moudle" {
  source    = "github.com/chadness12/Terraform-101-Study-Public/leechad_vpc_module"
  vpc_name  = "Challenge4_vpc"
  vpc_cidr  = "192.172.0.0/16"
  cidr_list = ["192.172.0.0/24", "192.172.1.0/24"]
}
