resource "random_string" "suffix" {
  length = 6
  upper = false
  special = false
}

locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

// list (allow duplicatesS)
resource "random_string" "list" {
  count = length(var.regions) // specific number of string

  length = 6
  upper = false
  special = false
}

// map (dictionary)
resource "random_string" "map" {
  for_each = var.region_instance_count // specific number of string

  length = 6
  upper = false
  special = false
}

resource "random_string" "if" {

  count = var.enabled ? 1 : 0

  length = 6
  upper = false
  special = false
}

module "alpha" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "bravo" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "charlie" {
  source = "./modules/rando" 
  length = 8
}