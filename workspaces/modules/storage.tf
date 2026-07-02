resource "azurerm_resource_group" "rg" {
  name     = "rg-workspace-${terraform.workspace}"
  location = var.res_location
}

resource "azurerm_storage_account" "storage" {
  name                     = "storage159abcsnai${terraform.workspace}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = var.repl_type

  tags = {
    Ambiente = terraform.workspace
  }
}
