variable "rsv_name" {
  type        = string
  description = "Name of your recovery service vault"
}

variable "location" {
  type        = string
  description = "Location of your resource"
}

variable "rg1_name" {
  type        = string
  description = "Name of your resourcegroup"
}

variable "sku" {
  type        = string
  description = "your SKU"
  default     = "Standard"
}

variable "soft_delete_enabled" {
  type        = bool
  description = "Is soft delete enabled?"
  default     = true
}
