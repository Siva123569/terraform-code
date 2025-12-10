
  provider "azurerm" {
  features {}
}



terraform {
  backend "azurerm" {
    resource_group_name  = "rg01siva"
    storage_account_name = "siva12345679"
    container_name       = "cont1"
    key                  = "siva.tf"
  }
}
resource "azurerm_resource_group" "rg01" {
  name = "rg01siva"
  location = "japan east"
}
