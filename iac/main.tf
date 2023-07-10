data "azurerm_subscription" "sub-pyasyg" {
  subscription_id   = ""
}

module "service_principal_reader" {
  source              = "./modules/service-principal"
  ad_application_name = "device-azure-monitor"
}

module "role_assignment_cost_reader" {
  source                = "./modules/role-assigment"
  scope                 = data.azurerm_subscription.sub-pyasyg.id
  role_definition_name  = "Cost Management Reader"
  principal_id          = module.service_principal_reader.ad_service_principal_id
}
