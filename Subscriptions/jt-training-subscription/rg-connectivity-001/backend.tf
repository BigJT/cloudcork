terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
    backend "azurerm" {
    resource_group_name     = "tfstate-uksouth-rg"
    storage_account_name    = "terraformbackendjtr01"
    container_name          = "tfstatefiles"
    key                     = "GitHub-Terraform-rg-connectivity-001"
  }
}
provider "azurerm" {
  features {}
}
