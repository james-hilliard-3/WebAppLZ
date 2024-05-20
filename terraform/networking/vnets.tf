# networking/vnets.tf

resource "azurerm_virtual_network" "hub_vnet" {
  name                = var.hub_vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.hub_rg.name
}

resource "azurerm_virtual_network" "prod_vnet" {
  name                = var.prod_vnet_name
  address_space       = [var.prod_vnet_cidr]
  location            = var.location
  resource_group_name = var.prod_rg_name
}

resource "azurerm_virtual_network" "qa_vnet" {
  name                = var.qa_vnet_name
  address_space       = [var.qa_vnet_cidr]
  location            = var.location
  resource_group_name = var.qa_rg_name
}

resource "azurerm_virtual_network" "test_vnet" {
  name                = var.test_vnet_name
  address_space       = [var.test_vnet_cidr]
  location            = var.location
  resource_group_name = var.test_rg_name
}

resource "azurerm_virtual_network" "mgmt_vnet" {
  name                = var.mgmt_vnet_name
  address_space       = var.mgmt_vnet_address_space
  location            = var.location
  resource_group_name = var.mgmt_rg_name
}
