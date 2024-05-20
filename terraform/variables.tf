# variables.tf

variable "environment" {
  description = "The Azure environment to use for the deployment."
  type        = string
  default     = "usgovernment"  // Default to Azure US Government Cloud
}

# Location Variable
# =====================

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "usgovarizona"
}

# Resource Group Names
variable "resource_group_name" {
  description = "Name of the resource group for the hub."
  default     = "lz-hub"
}

variable "mgmt_rg_name" {
  description = "Resource group name for the management VNet."
  default     = "lz-mgmt"
}

variable "prod_rg_name" {
  description = "The name of the Prod Resource Group"
  default     = "prod-rg"
}

variable "qa_rg_name" {
  description = "The name of the QA Resource Group"
  default     = "qa-rg"
}

variable "test_rg_name" {
  description = "The name of the Test Resource Group"
  default     = "test-rg"
}

# VNet Address Spaces
variable "vnet_address_space" {
  description = "The address space for the Hub VNet."
  default     = ["10.0.0.0/16"]
}

variable "mgmt_vnet_address_space" {
  description = "Address space for the management VNet."
  default     = ["10.2.0.0/16"]
}

variable "prod_vnet_cidr" {
  description = "CIDR block for the Prod VNET"
  default     = "10.1.0.0/16"
}

variable "qa_vnet_cidr" {
  description = "CIDR block for the QA VNET"
  default     = "10.4.0.0/16"
}

variable "test_vnet_cidr" {
  description = "CIDR block for the Test VNET"
  default     = "10.3.0.0/16"
}

# Subnet Prefixes
variable "appgw_subnet_prefix" {
  description = "Subnet prefix for the Application Gateway."
  default     = ["10.0.1.0/24"]
}

variable "fw_subnet_prefix" {
  description = "Subnet prefix for the Azure Firewall."
  default     = ["10.0.2.0/24"]
}

variable "mgmt_subnet_prefix" {
  description = "Subnet prefix for the management subnet."
  default     = ["10.2.1.0/24"]
}

variable "bastion_subnet_prefix" {
  description = "Subnet prefix for the Bastion host."
  default     = "10.0.3.0/27"
}

variable "entra_ds_subnet_prefix" {
  description = "Subnet prefix for Entra Domain Services."
  default     = "10.2.2.0/28"
}

# Naming Variables for VNets
variable "hub_vnet_name" {
  description = "Name of the Hub VNet."
  default     = "hub-vnet"
}

variable "prod_vnet_name" {
  description = "Name of the Prod VNet."
  default     = "prod-vnet"
}

variable "qa_vnet_name" {
  description = "Name of the QA VNet."
  default     = "qa-vnet"
}

variable "test_vnet_name" {
  description = "Name of the Test VNet."
  default     = "test-vnet"
}

variable "mgmt_vnet_name" {
  description = "Name of the Management VNet."
  default     = "mgmt-vnet"
}

# Naming Variables for Subnets
variable "appgw_subnet_name" {
  description = "Name of the Application Gateway Subnet."
  default     = "appgw-subnet"
}

variable "fw_subnet_name" {
  description = "Name of the Azure Firewall Subnet."
  default     = "fw-subnet"
}

variable "mgmt_subnet_name" {
  description = "Name of the Management Subnet."
  default     = "mgmt-subnet"
}

variable "bastion_subnet_name" {
  description = "Name of the Bastion Subnet."
  default     = "bastion-subnet"
}

variable "entra_ds_subnet_name" {
  description = "Name of the Entra Domain Services Subnet."
  default     = "entra-ds-subnet"
}

# Naming Variables for Firewall and Application Gateway
variable "firewall_public_ip_name" {
  description = "Name of the Firewall Public IP."
  default     = "fw-pip"
}

variable "firewall_name" {
  description = "Name of the Azure Firewall."
  default     = "firewall"
}

variable "appgw_name" {
  description = "The name of the Application Gateway."
  default     = "appgw"
}

variable "appgw_public_ip_name" {
  description = "The name of the Application Gateway Public IP."
  default     = "appgw-pip"
}

# Naming Variables for Key Vault and Recovery Services Vault
variable "keyvault_name" {
  description = "Name of the Key Vault."
  default     = "kv"
}

variable "recovery_services_vault_name" {
  description = "Name of the Recovery Services Vault."
  default     = "rsv"
}

# Azure Active Directory Details
variable "tenant_id" {
  description = "The tenant ID for Azure Active Directory."
  default     = "your-tenant-id"
}

variable "object_id" {
  description = "The object ID for Key Vault access policies."
  default     = "your-object-id"
}

# Firewall IP Address for Route Table Configuration
variable "fw_ip_address" {
  description = "The IP address of the Azure Firewall."
  default     = "10.0.2.4"
}
