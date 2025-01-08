variable "app_service_name" {
  type        = string
  description = "Name of the App Service"
}

variable "location" {
  type        = string
  description = "Azure Location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "sku_tier" {
  type        = string
  description = "SKU Tier for the App Service Plan (e.g., 'Standard')"
  default     = "Standard"
}

variable "sku_size" {
  type        = string
  description = "SKU Size for the App Service Plan (e.g., 'S1')"
  default     = "S1"
}