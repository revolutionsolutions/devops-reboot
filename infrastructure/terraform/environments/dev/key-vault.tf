resource "azurerm_key_vault" "platform" {
  name                = "kv-devops-reboot-dev"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  rbac_authorization_enabled = true

  soft_delete_retention_days = 7
}