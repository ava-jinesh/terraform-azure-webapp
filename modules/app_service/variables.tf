variable "name" {
  type        = string
  description = "The name of the App Service Plan."
}

variable "location" {
  type        = string
  description = "The location where the App Service Plan should be created."
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the App Service Plan."
  default     = "B1"
}

variable "worker_size" {
  type        = string
  description = "The worker size of the App Service Plan."
  default     = "0"
}

variable "reserved" {
  type        = bool
  description = "Whether the App Service Plan is reserved or not."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the App Service Plan."
  default     = {}
}