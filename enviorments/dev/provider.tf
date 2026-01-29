terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "rg-anil"
    storage_account_name = "terraformstatefileanil12"
    container_name       = "tfstate"
    key                  = "todo-infra-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "eac9ee72-3e50-4c23-b8c3-081a1f02b52a"
}