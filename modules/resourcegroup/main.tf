# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "rg1" {
  name     = var.rg1_name
  location = var.location
  tags     = var.tags
}
