# ==========================================
# OPCION 1: Importar un recurso de Azure
# ==========================================
resource "azurerm_virtual_network" "demo-import" {
  # Una vez importado el recurso con 'terraform import ...'
  # debemos rellenar estos valores para que coincidan con el recurso real en Azure
  # basándonos en la salida de 'terraform show'.
  
  # name                = "demo-vnet-import"
  # location            = "Mexico Central"
  # resource_group_name = "miResourceGroupImport"
  # address_space       = ["10.0.0.0/16"]
}

# ==========================================
# OPCION 2: Importar un recurso de AWS (EC2)
# ==========================================
# resource "aws_instance" "demo-import-aws" {
#   # Valores para coincidir con la instancia real
#   # ami                         = "ami-033b95fb8079dc481"
#   # associate_public_ip_address = true
#   # availability_zone           = "us-east-1a"
#   # subnet_id                   = "subnet-010205a1dea6ff7fd"
# }
