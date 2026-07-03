provider "azurerm" {
  features {}
}

# ==========================================
# PROVIDER OPCIONAL PARA AWS
# ==========================================
# Provider de AWS (Descomentar cuando haya credenciales)
provider "aws" {
  region = lookup(var.aws_region, terraform.workspace, "us-west-1")
}
