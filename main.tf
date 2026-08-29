terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.0.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "mystorage124123"
    container_name       = "firstcontainer"
    key                  = "day1.firstcontainer"
  }
}

#Configure the Microsoft Azure Provider 
provider "azurerm" {
    features {}
    
}
# Resorurce Group creation
resource "azurerm_resource_group" "myrg" {
    name = "temp_rg1_learning_eus"
    location = "eastus"
}

