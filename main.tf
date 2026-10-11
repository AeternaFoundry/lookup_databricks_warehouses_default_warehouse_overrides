data "databricks_warehouses_default_warehouse_overrides" "warehouses_default_warehouse_overrides_lookup" {
  for_each = var.warehouses_default_warehouse_overrides_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

