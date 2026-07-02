resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-${terraform.workspace}"
  location            = var.res_location
  resource_group_name = var.rg_name

  security_rule {
    name                       = "AllowSSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Name  = "NSG ${terraform.workspace}"
    owner = var.tags["owner"]
  }
}
