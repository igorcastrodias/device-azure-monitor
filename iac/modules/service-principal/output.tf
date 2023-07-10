output "ad_application_id" {
  description = "AD Application ID provided by resource."
  value       = azuread_application.ad_application.application_id
}
output "ad_service_principal_id" {
  description = "Service Principal ID provided by resource."
  value = azuread_service_principal.ad_service_principal.id
}