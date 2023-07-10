terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }

  }
  backend "azurerm" {
      resource_group_name  = ""
      storage_account_name = ""
      container_name       = ""
      key                  = ""
      access_key           = ""
  }

}

provider "azurerm" {
  features {}
}

provider "azuread" {
  tenant_id = ""
}