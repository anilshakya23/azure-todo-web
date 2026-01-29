module "rg" {
  source = "../../modules/azurerm_rg"
  rgs = var.rgs
}

module "network" {
    depends_on = [ module.rg ]
  source = "../../modules/azurerm_nerwork"
  networks = var.networks
}

module "pip" {
    depends_on = [ module.rg ]
  source = "../../modules/azurerm_pip"
  pips = var.pips
}

# module "kw" {
#   source = "../../modules/azurerm_keyvault"
#   kws = var.kws
# }

module "vm" {
    depends_on = [ module.rg, module.network, module.pip ]
  source = "../../modules/azurerm_computes"
  vms = var.vms
}