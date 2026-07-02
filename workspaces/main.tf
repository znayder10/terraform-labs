module "storage_demo" {
  source       = "./modules"
  
  res_location = lookup(var.location, terraform.workspace)
  repl_type    = lookup(var.replication, terraform.workspace)
}
