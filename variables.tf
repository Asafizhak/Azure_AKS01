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

variable "arm_subscription_id" {
  type        = string
  description = "The Azure subscription ID"
}

variable "arm_client_id" {
  type        = string
  description = "The Azure service principal client ID"
}

variable "arm_client_secret" {
  type        = string
  description = "The Azure service principal client secret"
}

variable "arm_tenant_id" {
  type        = string
  description = "The Azure tenant ID"
}
