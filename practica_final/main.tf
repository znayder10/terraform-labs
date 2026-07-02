module "network" {
  source       = "./network"
  res_location = lookup(var.location, terraform.workspace)
  vnet_cidr    = lookup(var.vnet_cidr, terraform.workspace)
  subnet_cidr  = lookup(var.subnet_cidr, terraform.workspace)
  tags         = var.tags
}

module "security" {
  source       = "./security"
  res_location = lookup(var.location, terraform.workspace)
  rg_name      = module.network.rg_name
  tags         = var.tags
}

module "infra" {
  source       = "./infra"
  res_location = lookup(var.location, terraform.workspace)
  vm_size      = lookup(var.vm_size, terraform.workspace)
  rg_name      = module.network.rg_name
  subnet_id    = module.network.subnet_id
  nsg_id       = module.security.nsg_id
  tags         = var.tags
}

