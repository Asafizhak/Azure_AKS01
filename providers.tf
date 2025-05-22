terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.58"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

variable "encryption_key" {
  type        = string
  description = "Encryption key for sensitive data"
}
