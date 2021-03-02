variable "kv_name" {
  type        = string
  description = "Name of the keyvault"
}

variable "location" {
  type        = string
  description = "Location of your resourcegroup"
  default     = "germanywestcentral"
}

variable "rg1_name" {
  type        = string
  description = "Name of your resourcegroup"
}

variable "enabled_for_disk_encryption" {
  type        = bool
  description = "enabled_for_disk_encryption?"
  default     = true
}
/*
variable tenant_id                   {
    type =
    description = 
    default =
}
*/
variable "soft_delete_retention_days" {
  type        = number
  description = "day untill it's really deleted after deletion"
  default     = 7
}

variable "purge_protection_enabled" {
  type        = bool
  description = "purge_protection_enabled?"
  default     = false
}

variable "sku_name" {
  type    = string
  default = "standard"
}
