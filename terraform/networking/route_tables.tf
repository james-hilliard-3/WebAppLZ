# networking/route_tables.tf

resource "azurerm_route_table" "prod_rt" {
  name                = var.prod_rt_name
  location            = var.location
  resource_group_name = var.prod_rg_name
}

resource "azurerm_route_table" "qa_rt" {
  name                = var.qa_rt_name
  location            = var.location
  resource_group_name = var.qa_rg_name
}

resource "azurerm_route_table" "test_rt" {
  name                = var.test_rt_name
  location            = var.location
  resource_group_name = var.test_rg_name
}

resource "azurerm_route_table" "hub_rt" {
  name                = var.hub_rt_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_route" "prod_to_fw" {
  name                   = "route-prod-to-fw"
  resource_group_name    = var.prod_rg_name
  route_table_name       = azurerm_route_table.prod_rt.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = var.fw_ip_address
}

resource "azurerm_route" "qa_to_fw" {
  name                   = "route-qa-to-fw"
  resource_group_name    = var.qa_rg_name
  route_table_name       = azurerm_route_table.qa_rt.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = var.fw_ip_address
}

resource "azurerm_route" "test_to_fw" {
  name                   = "route-test-to-fw"
  resource_group_name    = var.test_rg_name
  route_table_name       = azurerm_route_table.test_rt.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = var.fw_ip_address
}

resource "azurerm_route" "hub_to_fw" {
  name                   = "route-hub-to-fw"
  resource_group_name    = var.resource_group_name
  route_table_name       = azurerm_route_table.hub_rt.name
  address_prefix         = "0.0.0.0/0"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = var.fw_ip_address
}
