variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "azurerm_linux_web_appme" {
  type        = string
  description = "Name of the App Service Plan"
}


variable "location" {
  type        = string
  description = "Azure Location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "sku_name" {
  type        = string
  description = "Custom name for the App Service Plan SKU (optional)"
  default     = "B1"
}






