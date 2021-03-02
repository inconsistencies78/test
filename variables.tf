variable "rg1_name" {
  type = string
}

variable "kv_name" {
  type = string
}

variable "location" {
  type        = string
  description = "location of your resource"
  default     = "northeurope"
}

variable "ids_name" {
  type        = string
  description = "Name of insights diagnostic settings"
}

variable "rsv_name" {
  type        = string
  description = "Name of your recovery service vault"
}

variable "sa_name" {
  type        = string
  description = "Name of your storage account"
}

variable "tags" {
  type = map(any)
  default = {
    author = "andreas.barthel"
  }
}
