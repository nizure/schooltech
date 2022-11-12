resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.app_service_os_type
  sku_name            = var.app_service_plan_sku
}

resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}


resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  address_space       = ["var.vnet_address_space"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

// Create subnet
/*
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [var.subnet_address_space]
}
*/


