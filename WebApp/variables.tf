variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"
}

variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "app_service_name" {
  type        = string
  description = "App Service name in Azure"
}

variable "app_service_plan_sku" {
  type        = string
  description = "sku_name"
}

variable "app_service_os_type" {
  type        = string
  description = "os_type"
}

variable "vnet_name" {
  type        = string
  description = "vnet_name"
}

variable "vnet_address_space" {
  type        = string
  description = "vnet_address_space"
}

variable "subnet_name" {
  type        = string
  description = "subnet_name"
}



/*variable "sql_server_name" {
  type        = string
  description = "SQL Server instance name in Azure"
}

variable "sql_database_name" {
  type        = string
  description = "SQL Database name in Azure"
}

variable "sql_admin_login" {
  type        = string
  description = "SQL Server login name in Azure"
}

variable "sql_admin_password" {
  type        = string
  description = "SQL Server password name in Azure"
}*/