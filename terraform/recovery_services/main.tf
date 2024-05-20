# recovery_services/main.tf

resource "azurerm_recovery_services_vault" "mgmt_rsv" {
  name                = var.recovery_services_vault_name
  location            = var.location
  resource_group_name = var.mgmt_rg_name
  sku                 = "Standard"
  
  # Optional: Configure backup policy separately
}
