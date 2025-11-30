rgs = {
  rg1 = {
    name     = "dev-rg"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "dev-vnet"
    location            = "centralindia"
    resource_group_name = "dev-rg"
    address_space       = ["10.0.0.0/16"]
} }




sql_servers={
  sql1 = {
    name                         = "devsqlserver1234"
    resource_group_name          = "dev-rg"
    location                     = "centralindia"
    administrator_login          = "sqladminuser"
    administrator_login_password = "P@ssword1234"
    database_name                = "devsqldb"
    max_size_gb                  = 10
    minimum_tls_version          = "1.2"
    version                      = "12.0"
  }
}

acrs = {
  acr1 = {
    name                = "devacr30112024"
    resource_group_name = "dev-rg"
    location            = "centralindia"
    sku                 = "Basic"
    admin_enabled       = true
  }
}
clusters = {
  aks1 = {
    name                = "dev-aks-cluster"
    location            = "centralindia"
    resource_group_name = "dev-rg"
    dns_prefix          = "devaksdns"
    default_node_pool = {
      name       = "default"
      node_count = 2
      vm_size    = "Standard_DS2_v2"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}

key_vaults = {
  kv1 = {
    name                = "devkeyvault30112024"
    location            = "centralindia"
    resource_group_name = "dev-rg"
  }
}


