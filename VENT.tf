# Virtual Network (VNET)
resource "azurerm_virtual_network" "vnet" {
  name                = "dev-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
   azurerm_resource_group = "ajayjoshnas"
  address_space = ["10.0.0.0/16"]

  tags = {
    environment = "dev, production environment"
  }
}
