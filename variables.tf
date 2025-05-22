variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "acr-rg"
}

variable "location" {
  description = "Azure region to deploy the resources"
  type        = string
  default     = "West Europe"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "myacrprivate"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "acr-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "acr-subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default     = "970a7fad-b9ec-43e0-b40d-23ac8f474a3e"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "my-aks-cluster"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to use for the AKS cluster"
  type        = string
  default     = "1.26.0"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "Size of the VMs to use for the AKS nodes"
  type        = string
  default     = "Standard_B2s"
}
