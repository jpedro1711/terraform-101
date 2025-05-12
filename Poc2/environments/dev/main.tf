locals {
  env = var.env
  location = var.location
  app_service_plan_name = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  os_type = var.os_type
  sku_name = var.app_service_sku_name

  app_service_name = var.app_service_name

  app_service_plan_tags = {
    "Environment" = var.env
  }

  app_service_app_setting = {
    "Environment" = var.env
  }
}

resource "azurerm_resource_group" "rg" {
  name                = local.resource_group_name
  location            = var.location

  tags                = local.app_service_plan_tags
}

resource "azurerm_service_plan" "app-service-plan" {
  name                = local.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = local.os_type
  sku_name            = local.sku_name
}

resource "azurerm_linux_web_app" "app-service-api" {
  name                = local.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.app-service-plan.id
  app_settings        = local.app_service_app_setting

  site_config {
    always_on = false
  }
}