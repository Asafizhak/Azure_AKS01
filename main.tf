# Commented out Azure-specific resources
# module "resource_group" {
#   source   = "./modules/resource_group"
#   location = var.location
# }

# module "networking" {
#   source               = "./modules/networking"
#   vnet_name            = var.vnet_name
#   vnet_address_space   = ["10.0.0.0/16"]
#   subnet_name          = var.subnet_name
#   subnet_address_prefix = ["10.0.1.0/24"]
#   location             = module.resource_group.resource_group_location
#   resource_group_name  = module.resource_group.resource_group_name
# }

# module "acr" {
#   source              = "./modules/acr"
#   acr_name            = var.acr_name
#   resource_group_name = module.resource_group.resource_group_name
#   location            = module.resource_group.resource_group_location
#   sku                 = "Basic"
# }

# module "aks" {
#   source               = "./modules/aks"
#   cluster_name         = var.aks_cluster_name
#   location             = module.resource_group.resource_group_location
#   resource_group_name  = module.resource_group.resource_group_name
#   dns_prefix           = var.aks_dns_prefix
#   node_count           = 1
#   vm_size              = "Standard_DS2_v2"
#   subnet_id            = module.networking.subnet_id
#   acr_id               = module.acr.acr_id
#   tags                 = var.tags
# }

# Local resource for testing
resource "local_file" "test_config" {
  content  = "This is a test configuration file"
  filename = "${path.module}/test_config.txt"
}

output "test_config_path" {
  value = local_file.test_config.filename
}

# Commented out Azure-specific outputs
# output "acr_login_server" {
#   value = module.acr.acr_login_server
# }

# output "aks_cluster_id" {
#   value = module.aks.cluster_id
# }

# output "aks_cluster_fqdn" {
#   value = module.aks.cluster_fqdn
# }