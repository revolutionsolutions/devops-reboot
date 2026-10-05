output "vnet_id" {
  description = "VNet ID"
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "VNet name"
  value = azurerm_virtual_network.vnet.name
}

output "app_subnet_id" {
  description = "Application subnet ID"
  value = azurerm_subnet.app.id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value = azurerm_subnet.private.id
}

output "aks_subnet_id" {
  description = "AKS subnet ID"
  value = azurerm_subnet.aks.id
}