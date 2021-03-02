# module "resourcegroups" {
#   source   = "./modules/resourcegroup"
#   rg1_name = var.rg1_name
#   location = var.location
# }

resource "azurerm_resource_group" "rg1" {
  name     = var.rg1_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "rg2" {
  name     = var.rg1_name
  location = var.location
  tags     = var.tags
}

module "keyvault" {
  source     = "./modules/keyvault"
  kv_name    = var.kv_name
  rg1_name   = var.rg1_name
  location   = var.location
  depends_on = [azurerm_resource_group.rg1]
}

module "insights-diagnostic-settings" {
  source   = "./modules/insights-diagnostic-settings"
  kv_name  = var.kv_name
  ids_name = var.ids_name
  #    name_rg1 = var.rg1_name
  rg1_name = var.rg1_name
  sa_name  = var.sa_name
  depends_on = [azurerm_resource_group.rg1]
#  depends_on = [azurerm_storage_account.sa_anba]
}

module "storage_account" {
  source     = "./modules/storage-account"
  sa_name    = var.sa_name
  rg1_name   = var.rg1_name
  location   = var.location
  depends_on = [azurerm_resource_group.rg1]
#  depends_on = [azurerm_key_vault.kv_anba]
}

module "azurerm_recovery_services_vault" {
  source   = "./modules/rs-vaults"
  rsv_name = var.rsv_name
  location = var.location
  rg1_name = var.rg1_name
  depends_on = [azurerm_resource_group.rg1]
}

module "security_center_subscription_pricing_sc" {
  source = "./modules/security-pricings"
}
