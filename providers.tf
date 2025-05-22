terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }

  # Using local backend instead of Azure
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  
  subscription_id = var.arm_subscription_id
  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  tenant_id       = var.arm_tenant_id
}

provider "local" {}

# The encryption_key variable has been moved to variables.tf
