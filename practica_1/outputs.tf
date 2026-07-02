output "ssh_blob_url" {
  description = "URL del blob que contiene la llave SSH privada"
  value       = azurerm_storage_blob.ssh_key_blob.url
}

output "vnet_id" {
  description = "ID de la red virtual creada"
  value       = azurerm_virtual_network.vnet.id
}
