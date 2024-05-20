# bastion/main.tf

resource "azurerm_public_ip" "bastion_public_ip" {
  name                = var.bastion_public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastion" {
  name                = "${local.resource_name_prefix}-bastion"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_name            = "bastion${random_string.prefix.result}.eastus.azure.bastion"
  sku                 = "Basic"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_public_ip.id
  }
}

resource "random_string" "prefix" {
  length  = 8
  special = false
}
