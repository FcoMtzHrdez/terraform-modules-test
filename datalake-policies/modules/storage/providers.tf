terraform {

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.10.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5412ca73-aef1-42da-8c3a-25ea21aff075"
  tenant_id       = "ec34641b-4c3b-4f15-b259-15214ceabc6d"
}
