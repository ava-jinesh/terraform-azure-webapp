# modules/app_service/main.tf

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}

resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.example.id

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18" 
  }

  site_config {
    always_on = true
  }
}