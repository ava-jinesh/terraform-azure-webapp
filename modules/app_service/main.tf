resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.name
  location            = var.location
  sku_name            = var.sku_name
  worker_size         = var.worker_size
  reserved            = var.reserved
  tags                = var.tags
}