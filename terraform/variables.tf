variable "environment" {
  description = "The Azure environment to use for the deployment."
  type        = string
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group for the hub."
  type        = string
}

variable "resource_name_prefix" {
  description = "Prefix for resource names"
  type        = string
}
variable "mgmt_rg_name" {
  description = "Resource group name for the management VNet."
  type        = string
}

variable "prod_rg_name" {
  description = "The name of the Prod Resource Group"
  type        = string
}

variable "qa_rg_name" {
  description = "The name of the QA Resource Group"
  type        = string
}

variable "test_rg_name" {
  description = "The name of the Test Resource Group"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the Hub VNet."
  type        = list(string)
}

variable "mgmt_vnet_address_space" {
  description = "Address space for the management VNet."
  type        = list(string)
}

variable "prod_vnet_cidr" {
  description = "CIDR block for the Prod VNET"
  type        = string
}

variable "qa_vnet_cidr" {
  description = "CIDR block for the QA VNET"
  type        = string
}

variable "test_vnet_cidr" {
  description = "CIDR block for the Test VNET"
  type        = string
}

variable "appgw_subnet_prefix" {
  description = "Subnet prefix for the Application Gateway."
  type        = list(string)
}

variable "fw_subnet_prefix" {
  description = "Subnet prefix for the Azure Firewall."
  type        = list(string)
}

variable "mgmt_subnet_prefix" {
  description = "Subnet prefix for the management subnet."
  type        = list(string)
}

variable "bastion_subnet_prefix" {
  description = "Subnet prefix for the Bastion subnet."
  type        = list(string)
}

variable "entra_ds_subnet_prefix" {
  description = "Subnet prefix for the Entra DS subnet."
  type        = list(string)
}

variable "appgw_subnet_name" {
  description = "Name of the Application Gateway Subnet."
  type        = string
}

variable "fw_subnet_name" {
  description = "Name of the Azure Firewall Subnet."
  type        = string
}

variable "mgmt_subnet_name" {
  description = "Name of the Management Subnet."
  type        = string
}

variable "bastion_subnet_name" {
  description = "Name of the Bastion Subnet."
  type        = string
}

variable "entra_ds_subnet_name" {
  description = "Name of the Entra Domain Services Subnet."
  type        = string
}

variable "firewall_public_ip_name" {
  description = "Name of the Firewall Public IP."
  type        = string
}

variable "firewall_name" {
  description = "Name of the Azure Firewall."
  type        = string
}

variable "appgw_name" {
  description = "The name of the Application Gateway."
  type        = string
}

variable "appgw_public_ip_name" {
  description = "The name of the Application Gateway Public IP."
  type        = string
}

variable "keyvault_name" {
  description = "Name of the Key Vault."
  type        = string
}

variable "recovery_services_vault_name" {
  description = "Name of the Recovery Services Vault."
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for Azure Active Directory."
  type        = string
}

variable "object_id" {
  description = "The object ID for Key Vault access policies."
  type        = string
}

variable "fw_ip_address" {
  description = "The IP address of the Azure Firewall."
  type        = string
}

variable "prod_rt_name" {
  description = "Name of the production route table."
  type        = string
}

variable "qa_rt_name" {
  description = "Name of the QA route table."
  type        = string
}

variable "test_rt_name" {
  description = "Name of the test route table."
  type        = string
}

variable "hub_rt_name" {
  description = "Name of the hub route table."
  type        = string
}

variable "prod_vnet_name" {
  description = "Name of the production VNet."
  type        = string
}

variable "qa_vnet_name" {
  description = "Name of the QA VNet."
  type        = string
}

variable "test_vnet_name" {
  description = "Name of the test VNet."
  type        = string
}
