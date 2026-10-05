locals {
  name_prefix = "devops-reboot-${var.environment}"
}


resource "azurerm_resource_group" "this" {
  name     = "rg-${local.name_prefix}"
  location = var.location

  lifecycle {
    prevent_destroy = true
  }
}
