resource "local_file" "state_demo" {
  filename = "local.txt"
  content  = "Archivo de estado: local"
}

resource "azurerm_resource_group" "remote_state" {
  name     = "terralabs-state-rg"
  location = "Mexico Central"
}

resource "azurerm_storage_account" "remote_state" {
  name                     = "terralabsstateremoto01"
  resource_group_name      = azurerm_resource_group.remote_state.name
  location                 = azurerm_resource_group.remote_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "dev"
  }
}

resource "azurerm_storage_container" "remote_state" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.remote_state.name
  container_access_type = "private"
}
