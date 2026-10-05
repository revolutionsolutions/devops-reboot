resource "azurerm_network_security_group" "app_nsg" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "allow-https-outbound"
    priority                   = 100
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-ssh-temporary"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "80.217.176.72/32"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.app_nsg.id
}