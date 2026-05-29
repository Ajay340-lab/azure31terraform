resource "azurerm_resource_group" "RG01" {
name = "ajayjoshna"
location = "eastus"

}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "East US"
}
