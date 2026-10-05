resource "azurerm_container_registry" "platform" {
  name                = "acrdevopsrebootdev"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false

}
