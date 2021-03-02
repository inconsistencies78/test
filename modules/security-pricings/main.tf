# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/security_center_subscription_pricing

resource "azurerm_security_center_subscription_pricing" "sc_anba" {
  tier          = var.tier
  resource_type = var.resource_type
}
