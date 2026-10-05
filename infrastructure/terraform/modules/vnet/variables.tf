variable "name" {
  type        = string
  description = "VNet name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "app_subnet_name" {
  type        = string
  description = "Application subnet name"
}

variable "app_subnet_prefix" {
  type        = string
  description = "Application subnet CIDR"
}

variable "private_subnet_name" {
  type        = string
  description = "Private subnet name"
}

variable "private_subnet_prefix" {
  type        = string
  description = "Private subnet CIDR"
}

variable "aks_subnet_name" {
  type        = string
  description = "aks subnet name"
}

variable "aks_subnet_prefix" {
  type        = string
  description = "AKS subnet CIDR"
}