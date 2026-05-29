resource "azurerm_resource_group" "RG01" {
name = "ajayjoshna"
location = "eastus"

}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "East US"
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}