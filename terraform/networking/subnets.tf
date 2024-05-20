# networking/subnets.tf

resource "azurerm_subnet" "appgw_subnet" {
  name                 = var.appgw_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = var.appgw_subnet_prefix
}

resource "azurerm_subnet" "fw_subnet" {
  name                 = var.fw_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = var.fw_subnet_prefix
}

resource "azurerm_subnet" "mgmt_subnet" {
  name                 = var.mgmt_subnet_name
  resource_group_name  = var.mgmt_rg_name
  virtual_network_name = azurerm_virtual_network.mgmt_vnet.name
  address_prefixes     = var.mgmt_subnet_prefix
}

resource "azurerm_subnet" "bastion_subnet" {
  name                 = var.bastion_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = [var.bastion_subnet_prefix]
}

resource "azurerm_subnet" "entra_ds_subnet" {
  name                 = var.entra_ds_subnet_name
  resource_group_name  = var.mgmt_rg_name
  virtual_network_name = azurerm_virtual_network.mgmt_vnet.name
  address_prefixes     = [var.entra_ds_subnet_prefix]
}
