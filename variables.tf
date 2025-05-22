variable "encryption_key" {
  type        = string
  description = "Encryption key for sensitive data"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created"
  default     = "West Europe"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "my-vnet"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "my-subnet"
}

variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
  default     = "myacrregistry"
}
