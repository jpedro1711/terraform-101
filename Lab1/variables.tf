variable "application_name" {
  type = string

  validation {
    condition = length(var.application_name) <= 12
    error_message = "Length Of Application Name Must Be Equals or Less Than 12"
  }
}

variable "environment_name" {
  type = string
}

variable "api_key" {
  type = string
  sensitive = true
}

variable "instance_count" {
  type = number

  validation {
    condition = var.instance_count > local.min_nodes && var.instance_count < local.max_nodes && var.instance_count % 2 != 0
    error_message = "Must be between 1 and 10 and must not be even"
  }
}

variable "enabled" {
  type = bool
}

variable "regions" {
  type = list(string)
}

variable "region_instance_count" {
  type = map(string)
}

variable "region_set" {
  type = set(string)
}

variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}