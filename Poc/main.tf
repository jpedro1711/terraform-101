# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.27.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name                = var.resource_group_name
  location            = var.resource_group_location

  tags                = var.resource_group_tags
}

resource "azurerm_service_plan" "app-service-plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.app_service_plan_os_type
  sku_name            = var.app_service_sku_name
}

resource "azurerm_linux_web_app" "app-service-api" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.app-service-plan.id
  app_settings        = var.app_service_app_settings
  

  site_config {
    always_on = false
  }
}