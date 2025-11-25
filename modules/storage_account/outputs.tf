output "sa_name" {
  value = azurerm_storage_account.sa.name
}

output "sa_primary_blob_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}
