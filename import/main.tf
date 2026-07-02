resource "azurerm_virtual_network" "demo-import" {
  # Una vez importado el recurso con 'terraform import ...'
  # debemos rellenar estos valores para que coincidan con el recurso real en Azure
  # basándonos en la salida de 'terraform show'.
  
  # name                = "demo-vnet-import"
  # location            = "Mexico Central"
  # resource_group_name = "miResourceGroupImport"
  # address_space       = ["10.0.0.0/16"]
}
