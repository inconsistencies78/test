# output "resource_group_id" {
#   value = module.resourcegroups.resource_group_id
# }


output "resource_group_id1" {
  value = azurerm_resource_group.rg1.id
}

output "resource_group_id2" {
  value = azurerm_resource_group.rg2.id
}

output "key_vault_id" {
  value = module.keyvault.key_vault_id
}

output "key_vault_uri" {
  value = module.keyvault.key_vault_uri
}

output "recovery_service_vault_id" {
  value = module.azurerm_recovery_services_vault.recovery_service_vault_id
}

output "security_center_subscription_pricing_sc_id" {
  value = module.security_center_subscription_pricing_sc.security_center_subscription_pricing_sc
}

output "storage_account_id" {
  value = module.storage_account.sa_id
}

output "storage_account_primary_location" {
  value = module.storage_account.sa_primary_location
}

output "storage_account_primary_access_key" {
  value = module.storage_account.sa_primary_access_key
}

output "azurerm_monitor_diagnostic_setting_ids_anba" {
  value = module.insights-diagnostic-settings.azurerm_monitor_diagnostic_setting_ids_anba
}
