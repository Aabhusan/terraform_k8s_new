module "vpc" {
  source = "./modules/vpc"
}
module "subnets" {
  source = "./modules/subnets"
  vpc_id = "${module.vpc.vpc_id}"

}

module "routes" {
  source = "./modules/routes"
  gateway_id ="${module.vpc.gateway_id}"
  vpc_id = "${module.vpc.vpc_id}"
  nat_gateway_id  ="${module.subnets.nat_gateway_id}"
  subnet_id ="${module.subnets.public_subnet_id}"
}




