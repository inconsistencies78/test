variable "kv_name" {
  type        = string
  description = "Name of your keyvault"
  #    default = "CoBa-keyvault-anba"
}

variable "rg1_name" {
  type        = string
  description = "Name of your resourcegroup"
}

variable "ids_name" {
  type        = string
  description = "Name od insights diagnostic settings"
}

variable "sa_name" {
  type        = string
  description = "Name of your storage account"
}



/*
aktuell in main.tf benannt
variable "target_resource_id" {
    type = string
    description = "ID of your target resource"
    default = 
}

variable "storage_account_id" {
    type = string
    description = "ID of your storage account"
    default = 
}
*/