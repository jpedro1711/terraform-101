environment_name = "dev"
instance_count = 5
enabled = false
regions = ["westus", "eastus", "westus"] // ordered, allows duplicates
region_instance_count = {
  "westus" = 4
  "eastus" = 8
}
region_set = ["westus", "eastus"] // "no duplicates", designed for iteration
sku_settings = {
  kind = "P"
  tier = "Business"
}
# terraform apply --var-file ./env/prod.tfvars
# aplicar apply com variáveis de ambiente