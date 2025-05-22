module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "networking" {
  source               = "./modules/networking"
  vnet_name            = var.vnet_name
  vnet_address_space   = var.vnet_address_space
  subnet_name          = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
}

# Output the ACR ID for future use with AKS
output "acr_id" {
  value = module.acr.acr_id
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}