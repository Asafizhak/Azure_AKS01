variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the ACR will be created"
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}