provider "azurerm" {
  features {}
}

# 1. Resource Group
resource "azurerm_resource_group" "practica1" {
  name     = "RG-Practica1"
  location = var.location
}

# 2. Generar llave SSH local
resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  content  = tls_private_key.ssh.private_key_pem
  filename = "${path.module}/${var.ssh_key_name}.pem"
}

# 3. Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.practica1.name
  location                 = azurerm_resource_group.practica1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# 4. Storage Container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

# 5. Storage Blob (subir llave)
resource "azurerm_storage_blob" "ssh_key_blob" {
  name                   = "${var.ssh_key_name}.pem"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = local_file.private_key.filename
  depends_on             = [local_file.private_key]
}

# 6. Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "lab-${var.estudiante_nombre}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.practica1.location
  resource_group_name = azurerm_resource_group.practica1.name
}
