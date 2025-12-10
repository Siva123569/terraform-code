
  provider "azurerm" {
  features {}
  subscription_id = "e4f76d47-ca43-4e93-ad46-55dfe9196780"
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
