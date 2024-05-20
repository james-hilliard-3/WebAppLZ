# networking/nsgs.tf

resource "azurerm_network_security_group" "prod_nsg" {
  name                = "${local.resource_name_prefix}-nsg-prod"
  location            = var.location
  resource_group_name = var.prod_rg_name
}

resource "azurerm_network_security_group" "qa_nsg" {
  name                = "${local.resource_name_prefix}-nsg-qa"
  location            = var.location
  resource_group_name = var.qa_rg_name
}

resource "azurerm_network_security_group" "test_nsg" {
  name                = "${local.resource_name_prefix}-nsg-test"
  location            = var.location
  resource_group_name = var.test_rg_name
}

resource "azurerm_network_security_group" "hub_nsg" {
  name                = "${local.resource_name_prefix}-nsg-hub"
  location            = var.location
  resource_group_name = var.resource_group_name
}
