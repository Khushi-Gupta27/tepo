resource "azurerm_storage_account" "sa" {
  name                     = ${var.storage_account_name}${substr(md5(var.webapp_id), 0, 6)}
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

 public_network_access_enabled = false
 
  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
    ip_rules       = []
  }
}
