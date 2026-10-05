variable "name" {
  type        = string
  description = "NSG name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "subnet_id" {
  description = "Subnet ID to associate with the NSG"
  type = string
}