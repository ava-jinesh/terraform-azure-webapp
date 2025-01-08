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


module "app_service_plan" {
  source  = "./modules/azure_app_service_plan" 
  name    = "my-app-service-plan" 
  location = "eastus2" 
  
}