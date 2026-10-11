output "warehouses_default_warehouse_overrides_lookup_default_warehouse_overrides" {
  description = "Map of default_warehouse_overrides values across all warehouses_default_warehouse_overrides_lookup, keyed the same as var.warehouses_default_warehouse_overrides_lookup except keys with no default_warehouse_overrides are omitted"
  value       = { for k, v in data.databricks_warehouses_default_warehouse_overrides.warehouses_default_warehouse_overrides_lookup : k => v.default_warehouse_overrides if v.default_warehouse_overrides != null && length(v.default_warehouse_overrides) > 0 }
}
output "warehouses_default_warehouse_overrides_lookup_page_size" {
  description = "Map of page_size values across all warehouses_default_warehouse_overrides_lookup, keyed the same as var.warehouses_default_warehouse_overrides_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_warehouses_default_warehouse_overrides.warehouses_default_warehouse_overrides_lookup : k => v.page_size if v.page_size != null }
}
output "warehouses_default_warehouse_overrides_lookup_provider_config" {
  description = "Map of provider_config values across all warehouses_default_warehouse_overrides_lookup, keyed the same as var.warehouses_default_warehouse_overrides_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_warehouses_default_warehouse_overrides.warehouses_default_warehouse_overrides_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

