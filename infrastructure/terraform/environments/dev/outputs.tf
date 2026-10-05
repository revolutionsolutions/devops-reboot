output "resource_group_name" {
  description = "Name of the development resource group"
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "ID of the development resource group"
  value       = module.resource_group.resource_group_id
}

output "existing_resource_group_location" {
  description = "Existing resource group location"
  value       = data.azurerm_resource_group.existing.location
}