variable "rg1_name" {
  type        = string
  description = "Name of the 1st resource group"
}

variable "location" {
  type        = string
  description = "location of your resourcegroup"
  default     = "germanywestcentral"
}

variable "tags" {
  type = map(any)
  default = {
    author = "andreas.barthel"
  }
  description = "first resource group"
}