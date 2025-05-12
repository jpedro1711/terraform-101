module "app_service" {
  source = "./modules/app_service"
  location = var.location
  app_service_name = var.app_service_name
  app_service_plan_name = var.app_service_plan_name
  app_service_sku_name = var.app_service_sku_name
  resource_group_name = var.resource_group_name
  os_type = var.os_type
  env = var.env
}