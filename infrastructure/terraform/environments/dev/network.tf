module "vnet" {
  source = "../../modules/vnet/"

  name                = "vnet-devops-dev"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name

  address_space = ["10.10.0.0/16"]

  app_subnet_name   = "subnet-app"
  app_subnet_prefix = "10.10.1.0/24"

  private_subnet_name   = "subnet-private"
  private_subnet_prefix = "10.10.2.0/24"

  aks_subnet_name   = "subnet-aks"
  aks_subnet_prefix = "10.10.3.0/24"
}

module "app_nsg" {
  source = "../../modules/nsg"

  name                = "nsg-app-dev"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.vnet.app_subnet_id
}