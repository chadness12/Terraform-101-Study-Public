variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "cidr_list" {
  type = list(string)
}

variable "az_list" {
  default = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c", "ap-northeast-2d"]
}