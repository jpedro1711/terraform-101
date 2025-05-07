output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "app_service_plan_id" {
  value = azurerm_service_plan.app-service-plan.id
}

output "app_service_id" {
  value = azurerm_linux_web_app.app-service-api.id
}