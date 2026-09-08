terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.48.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "dhondu-rg"
  #   storage_account_name = "microdevinfrastorage456"
  #   container_name       = "dev-container"
  #   key                  = "dev.tfstate"
  # }
}

provider "azurerm" {
  features {}
}