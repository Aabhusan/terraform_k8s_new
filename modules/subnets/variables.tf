variable "availabilty_zones" {
  default = ["ap-southeast-2a","ap-southeast-2b","ap-southeast-2c"]
}

variable "cidr_block" {
  default="10.0.0.0/24"
}


variable "max_subnet_count" {
  default     = 0
  description = "Sets the maximum amount of subnets to deploy. 0 will deploy a subnet for every provided availablility zone (in `availability_zones` variable) within the region"
}


variable "vpc_id" {
    description="variable for the module"
}

