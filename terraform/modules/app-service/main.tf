resource "azurerm_resource_group" "azure_rg" {
  name     = "challenge"
  location = "Central US"
}

resource "azurerm_service_plan" "app_svc_plan" {
  name                = "${var.app_svc_plan_name}${var.environment}"
  resource_group_name = var.rg_name
  location            = var.rg_location
  os_type             = "Linux"
  sku_name            = "P1v2"

}

resource "azurerm_linux_web_app" "example" {
  name                = "example-linux-web-app"
  resource_group_name = azurerm_resource_group.azure_rg.name
  location            = azurerm_service_plan.app_svc_plan.location
  service_plan_id     = azurerm_service_plan.app_svc_plan.id

  site_config {}
}

resource "azurerm_linux_web_app_slot" "example" {
  name           = "example-slot"
  app_service_id = azurerm_linux_web_app.example.id

  site_config {}
}