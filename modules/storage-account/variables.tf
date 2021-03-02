variable "sa_name" {
  type        = string
  description = "Name of your storage account"
}

variable "rg1_name" {
  type        = string
  description = "Name of your resourcegroup"
}

variable "location" {
  type        = string
  description = "Location of your resource"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "GRS"
}
variable "tags" {
  type        = map(any)
  description = "Tags"
  default = {
    environment = "test"
  }
}
