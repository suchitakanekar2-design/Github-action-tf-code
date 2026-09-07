terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.48.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dhondu-rg"
    storage_account_name = "microdevinfrastorage456"
    container_name       = "dev-container"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ed2a265e-c844-4e28-b540-796a000a90d4"
}