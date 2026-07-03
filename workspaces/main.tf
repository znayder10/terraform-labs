module "storage_demo" {
  source       = "./modules"
  
  res_location = lookup(var.location, terraform.workspace)
  repl_type    = lookup(var.replication, terraform.workspace)
}

# ==========================================
# RECURSO OPCIONAL PARA AWS (Instancia EC2)
# ==========================================
# resource "aws_instance" "app_server" {
#   ami           = lookup(var.aws_ami, terraform.workspace)
#   instance_type = "t2.micro"
#
#   tags = {
#     Name  = "Instancia-Snaider-${terraform.workspace}"
#     Owner = "Snaider"
#   }
# }
