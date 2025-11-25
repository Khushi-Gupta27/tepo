
module "storage_account" {
  source         = "./modules/storage_account"
  sa_name        = var.sa_name
  location       = var.location
  resource_group = var.resource_group
  account_replication_type = "LRS"
}

module "web_app" {
  source         = "./modules/web_app"
  app_name       = var.app_name
  location       = var.location
  resource_group = var.resource_group
  webapp_id = module.web_app.webapp_id
}
