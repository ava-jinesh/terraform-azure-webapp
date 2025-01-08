output "app_service_endpoint" {
  value = azurerm_app_service.example.default_site_hostname
}