resource "azurerm_app_service_plan" "asp" {
  name                = "webapp131"
  location            = var.location
  resource_group_name = var.resource_group
  sku {
    tier = "Free"
    size = "F1"
output "webapp_id"
value= "azurerm_app_service.webapp.id"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group
  app_service_plan_id = azurerm_app_service_plan.asp.id
}

