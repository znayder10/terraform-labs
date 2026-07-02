output "nsg_id" {
  description = "ID del Network Security Group creado"
  value       = azurerm_network_security_group.nsg.id
}
