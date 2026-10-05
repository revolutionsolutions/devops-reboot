terraform {
  backend "azurerm" {
    resource_group_name  = "rg-devops-tfstate"
    storage_account_name = "stdevopsreboot0907"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"

    use_azuread_auth = true
  }
}
