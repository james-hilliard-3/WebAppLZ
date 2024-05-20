module "networking" {
  source = "./networking"
  
}

module "bastion" {
  source = "./bastion"
  
}

module "firewall" {
  source = "./firewall"
 
}

module "keyvault" {
  source = "./keyvault"
  
}

module "recovery_services" {
  source = "./recovery_services"
  
}

module "app_gateway" {
  source = "./app_gateway"
 
}
