terraform {
  required_providers {
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

provider "local" {}

# The encryption_key variable has been moved to variables.tf
