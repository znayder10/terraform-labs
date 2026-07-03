provider "azurerm" {
  features {}
}

# ==========================================
# PROVIDER OPCIONAL PARA AWS
# ==========================================
# provider "aws" {
#   region = lookup(var.aws_region, terraform.workspace)
# }
