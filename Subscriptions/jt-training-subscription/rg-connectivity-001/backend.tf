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
  subscription_id = "d9171167-ee27-4ddf-b473-cafecd58c21a"
  tenant_id = "8c4c3e96-dd96-4e89-af50-45a4412919b0"
  features {}
}
