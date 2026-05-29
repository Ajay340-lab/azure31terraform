# Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "dev-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  location = "eastus"
  address_prefixes = ["10.0.1.0/24"]
}
# Backend Address Pool
resource "azurerm_lb_backend_address_pool" "backendpool" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "BackendPool"
}