location            = "eastus2"
resource_group_name = "rg-dev-webapp"
azurerm_linux_web_app    = "webapp-dev"

app_service_plan_name = "my-dev-app-service-plan"




variable "sku_size" {
  type        = string
  description = "SKU Size for the App Service Plan (e.g., 'F1')"
  default     = "F1"
}