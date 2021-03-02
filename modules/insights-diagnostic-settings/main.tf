# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting

data "azurerm_storage_account" "sa_anba" {
  name                = var.sa_name
  resource_group_name = var.rg1_name
}


data "azurerm_key_vault" "kv_anba" {
  name                = var.kv_name
  resource_group_name = var.rg1_name
}

resource "azurerm_monitor_diagnostic_setting" "ids_anba" {
  name               = var.ids_name
  target_resource_id = data.azurerm_key_vault.kv_anba.id
  storage_account_id = data.azurerm_storage_account.sa_anba.id

  # from here follow default values from terraform-homepage
  log {
    category = "AuditEvent"
    enabled  = false

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}
