# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault

resource "azurerm_recovery_services_vault" "kv_anba" {
  name                = var.rsv_name
  location            = var.location
  resource_group_name = var.rg1_name
  sku                 = var.sku

  soft_delete_enabled = var.soft_delete_enabled
}
