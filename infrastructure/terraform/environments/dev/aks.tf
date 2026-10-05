resource "azurerm_kubernetes_cluster" "platform" {
  name                = "aks-devops-dev"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  dns_prefix          = "aks-devops-dev"

  kubernetes_version = "1.35.8"

  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name           = "system"
    node_count     = 1
    vm_size        = "Standard_B2s"
    vnet_subnet_id = module.vnet.aks_subnet_id

    upgrade_settings {
        max_surge = "10%"
        drain_timeout_in_minutes = 0
        node_soak_duration_in_minutes = 0
        }
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    load_balancer_sku = "standard"
  }

  tags = {
    Environment = var.environment
    project     = "devops-reboot"
  }
}
