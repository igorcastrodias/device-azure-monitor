data "azuread_client_config" "current" {}

resource "azuread_application" "ad_application" {
  display_name = var.ad_application_name
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "ad_service_principal" {
  application_id               = azuread_application.ad_application.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}

resource "azuread_application_password" "ad_application_password" {
  application_object_id = azuread_application.ad_application.object_id
}