resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "example" {
  name                = var.azurerm_linux_web_app
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = azurerm_service_plan.example.id
  depends_on = [azurerm_service_plan.example]
  https_only            = true
  
  site_config {
    minimum_tls_version = "1.2"
  }
  
}

resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = azurerm_linux_web_app.webapp.id
  repo_url           = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
  branch             = "master"
  use_manual_integration = true
  use_mercurial      = false
}