# Environment and Location
environment              = "usgovernment"
location                 = "usgovarizona"

# Resource Group Names
resource_name_prefix = "your_prefix_here"
resource_group_name      = "lz-hub"
mgmt_rg_name             = "lz-mgmt"
prod_rg_name             = "prod-rg"
qa_rg_name               = "qa-rg"
test_rg_name             = "test-rg"

# VNet Address Spaces
vnet_address_space       = ["10.0.0.0/16"]
mgmt_vnet_address_space  = ["10.2.0.0/16"]
prod_vnet_cidr           = "10.1.0.0/16"
qa_vnet_cidr             = "10.4.0.0/16"
test_vnet_cidr           = "10.3.0.0/16"

# Subnet Prefixes
appgw_subnet_prefix      = ["10.0.1.0/24"]
fw_subnet_prefix         = ["10.0.2.0/24"]
mgmt_subnet_prefix       = ["10.2.1.0/24"]
bastion_subnet_prefix    = ["10.2.2.0/24"]
entra_ds_subnet_prefix   = ["10.2.3.0/24"]

# Naming Variables for Subnets
appgw_subnet_name        = "appgw-subnet"
fw_subnet_name           = "fw-subnet"
mgmt_subnet_name         = "mgmt-subnet"
bastion_subnet_name      = "bastion-subnet"
entra_ds_subnet_name     = "entra-ds-subnet"

# Naming Variables for Firewall and Application Gateway
firewall_public_ip_name  = "fw-pip"
firewall_name            = "firewall"
appgw_name               = "appgw"
appgw_public_ip_name     = "appgw-pip"

# Naming Variables for Key Vault and Recovery Services Vault
keyvault_name            = "kv"
recovery_services_vault_name = "rsv"

# Azure Active Directory Details
tenant_id                = "your-tenant-id"
object_id                = "your-object-id"

# Firewall IP Address for Route Table Configuration
fw_ip_address            = "10.0.2.4"

# Route Table Names
prod_rt_name             = "prod-route-table"
qa_rt_name               = "qa-route-table"
test_rt_name             = "test-route-table"
hub_rt_name              = "hub-route-table"

# VNet Names
prod_vnet_name           = "prod-vnet"
qa_vnet_name             = "qa-vnet"
test_vnet_name           = "test-vnet"
