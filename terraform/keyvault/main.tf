# keyvault/main.tf

resource "azurerm_key_vault" "mgmt_kv" {
  name                = var.keyvault_name
  location            = var.location
  resource_group_name = var.mgmt_rg_name
  tenant_id           = var.tenant_id
  sku_name            = "standard"

  enabled_for_disk_encryption          = true
  enabled_for_deployment               = true
  enabled_for_template_deployment      = true
  purge_protection_enabled             = true
  
  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
    ]

    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
    ]
  }
}
