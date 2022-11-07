resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.app_service_os_type
  sku_name            = var.app_service_namer.app_service_plan_sku
}

resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}