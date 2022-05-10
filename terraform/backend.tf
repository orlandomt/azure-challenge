terraform {
  backend "azurerm" {
    resource_group_name  = "RG-xPaymentDev"
    storage_account_name = "astxpaymentdev"
    container_name       = "terraform"
    key                  = "qa.terraform.tfstate"
  }
}