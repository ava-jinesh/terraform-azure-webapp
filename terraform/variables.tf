variable "location" {
  type        = string
  description = "Azure Location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "app_service_name" {
  type        = string
  description = "Name of the App Service"
}


variable "service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}