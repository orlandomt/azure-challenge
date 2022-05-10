terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.75.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d5bd60c8-d8cb-4cce-aedf-e38af0ee311b"
  tenant_id       = "5b0902e4-9ce7-4ae2-9d8e-1b75ea014381"
}