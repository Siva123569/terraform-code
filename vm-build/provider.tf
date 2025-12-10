provider "azurerm" {
  features {}
  # Configuration options
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg01siva"
    storage_account_name = "siva1234567"
    container_name       = "cont1"
    key                  = "demo.tfstate"
  }
}
