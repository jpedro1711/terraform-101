output "application_name" {
  value = var.application_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_prefix" {
  value = local.environment_prefix
}

output "suffix" {
  value = random_string.suffix.result
}

output "api_key" {
  value = "${var.api_key}bar"
  sensitive = true
}
# $env:TF_VAR_api_key = "foo" - Comando para setar variável sensível no powerShell e o terraform reconhecer (não é preciso inserir valor manualmente)

output "primary_region" {
  value = var.regions[0]
}

output "primary_region_dictionary_instance_count" {
  value = var.region_instance_count["westus"]
}

output "primary_region_instance_count" {
  value = var.region_instance_count[var.regions[0]]
}

output "sku_settings_kind" {
  value = var.sku_settings.kind
}