terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" 
    }
  }
}

provider "azurerm" {
  features {} 
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

module "app_service" {
  source              = "../modules/app_service"
  app_service_name    = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name 
  app_service_plan_name = var.app_service_plan_name
}

