output "webapp_name" {
  value = azurerm_app_service.webapp.name
}

output "webapp_url" {
  value = azurerm_app_service.webapp.default_site_hostname
}