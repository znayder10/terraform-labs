module "storage_demo" {
  source = "./modules"

  res_location = lookup(var.location, terraform.workspace)
  repl_type    = lookup(var.replication, terraform.workspace)
}

# ==============================================================
# EJEMPLO AWS: Descomentar cuando haya credenciales de AWS válidas
# ==============================================================
resource "aws_instance" "server" {
  ami           = lookup(var.aws_ami, terraform.workspace, "ami-01a694e4a87a9d197")
  instance_type = "t3a.nano"

  tags = {
    Name  = "Snaider-VM-${terraform.workspace}"
    Owner = "Snaider"
  }
}
