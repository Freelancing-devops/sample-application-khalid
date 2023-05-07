locals {
  subscription_id = "721c9ae7-1ccf-4733-88b7-9cd6a3dcfab2"
  app_name        = "sample-application-khalid"
}

resource "azurerm_resource_group" "khalid-rg" {
  name     = "sample-application-khalid_group"
  location = "North Europe"
}

resource "azurerm_app_service_plan" "khalid-plan" {
  name                = "ASP-sampleapplicationkhalidgroup-8593"
  location            = azurerm_resource_group.khalid-rg.location
  resource_group_name = azurerm_resource_group.khalid-rg.name

  kind = "Linux"
  reserved = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "khalid-app" {
  name                = "sample-application-khalid"
  location            = azurerm_resource_group.khalid-rg.location
  resource_group_name = azurerm_resource_group.khalid-rg.name
  app_service_plan_id = azurerm_app_service_plan.khalid-plan.id

  site_config {
    linux_fx_version = "NODE|18-lts"
  }

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "18"
  }
}
