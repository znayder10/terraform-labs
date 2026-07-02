resource "azurerm_resource_group" "rg" {
  name     = "rg-${terraform.workspace}-final"
  location = var.res_location
}
