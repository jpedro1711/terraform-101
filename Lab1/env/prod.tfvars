environment_name = "prod"
instance_count = 5
enabled = true
regions = ["westus", "eastus", "westus"] // ordered, allows duplicates
region_instance_count = {
  "westus" = 4
  "eastus" = 8
}
region_set = ["westus", "eastus", "westus"] // "no duplicates", designed for iteration
sku_settings = {
  kind = "P"
  tier = "Business"
}