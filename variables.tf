variable "warehouses_default_warehouse_overrides_lookup" {
  description = <<EOT
Map of warehouses_default_warehouse_overrides_lookup, attributes below
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

