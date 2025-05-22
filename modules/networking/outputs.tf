output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "application_gateway_id" {
  value = azurerm_application_gateway.agw.id
}