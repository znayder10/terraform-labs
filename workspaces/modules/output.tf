output "storage_tier" {
  value = azurerm_storage_account.storage.account_tier
}

output "storage_replication" {
  value = azurerm_storage_account.storage.account_replication_type
}

output "storage_location" {
  value = azurerm_storage_account.storage.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
