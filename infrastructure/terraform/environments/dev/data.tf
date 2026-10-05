data "azurerm_resource_group" "existing" {
  name = "rg-devops-reboot-dev"
}

data "azurerm_client_config" "current" {}