module "rgs" {
  source = "../../Modules/RG"
  rg     = var.rgs
}
module "vnets" {
  depends_on = [var.rgs]
  source     = "../../Modules/Vnet"
  vnet       = var.vnets
}



module "sql_databases" {
  source        = "../../Modules/SQL Server_Database"
  sql_server    = var.sql_servers
  depends_on    = [module.rgs]
}

module "acrs" {
  source     = "../../Modules/ACR"
  acr        = var.acrs
  depends_on = [var.rgs]

}

module "clusters" {
  source     = "../../Modules/Cluster"
  cluster    = var.clusters
  depends_on = [module.rgs, module.acrs]
}

module "key_vs" {
  source = "../../Modules/keyvault"
  key_vault=var.key_vaults
  depends_on = [ module.rgs ]
}


