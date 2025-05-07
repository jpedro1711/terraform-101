variable "resource_group_location" {
  default = "eastus"
}

variable "resource_group_name" {
  default = "devops-infra-dev"
}

variable "resource_group_tags" {
  type = map(string)
}

variable "app_service_plan_name" {
  default = "devops-api-plan"
}

variable "app_service_plan_os_type" {
  default = "Linux"
}

variable "app_service_sku_name" {
  default = "F1"
}

variable "app_service_name" {
  default = "devops-api"
}

variable "app_service_app_settings" {
  type = map(string)
}