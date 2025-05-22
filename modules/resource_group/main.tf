resource "azurerm_resource_group" "rg" {
  name     = "acr-rg"
  location = var.location
}

variable "location" {
  description = "The Azure region where the resource group will be created"
  type        = string
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.rg.location
}