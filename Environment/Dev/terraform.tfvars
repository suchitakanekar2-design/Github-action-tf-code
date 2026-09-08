rg_details = {
  rg1 = {
    rg_name  = "dev-resource-group"
    location = "centralindia"
  }
}

storage_details = {
  storage1 = {
    storage_name             = "devinfrastorage981"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    resource_group_name      = "dev-resource-group"
  }
}

vnet_details = {
  vnet1 = {
    vnet_name           = "dev-net"
    location            = "centralindia"
    resource_group_name = "dev-resource-group"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      subnet1 = {
        subnet_name      = "dev-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
    }
  }
}

# pip_details = {
#   pip1 = {
#     pip_name            = "dev-public-ip"
#     location            = "eastus"
#     resource_group_name = "dev-resource-group"

#     tags = {
#       environment = "dev"
#       owner       = "devops"
#     }
#   }

#   pip2 = {
#     pip_name            = "prod-public-ip"
#     location            = "centralindia"
#     resource_group_name = "dev-resource-group"

#     tags = {
#       environment = "prod"
#       owner       = "cloud-team"
#     }
#   }
# }

# vms = {
#   vms1 = {
#     nic_name            = "dev-nic"
#     nic_location        = "centralindia"
#     vm_name             = "dev-vm"
#     location            = "centralindia"
#     resource_group_name = "dev-resource-group"
#     size                = "Standard_B1s"
#     admin_username      = "azureuser"
#     admin_password      = "Password123!"
#     pip_name            = "dev-pip"
#     vnet_name           = "dev-net"
#     subnet_name         = "dev-subnet"
#   }
# }

key_vaults = {
  "dev-kv" = {
    name                        = "devkeyvlt22"
    location                    = "Central India"
    resource_group_name         = "dev-resource-group"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
    tags                        = {}

    access_policies = [
      {
        object_id = "7e450572-1056-4117-9e7b-97e717138408"

        key_permissions = [
          "Get",
          "List",
          "Create"
        ]

        secret_permissions = [
          "Get",
          "Set",
          "List"
        ]

        certificate_permissions = [
          "Get",
          "List"
        ]

        storage_permissions = [
          "Get",
          "List"
        ]
      }
    ]
  }
}


acr_details = {
  acr1 = {
    acr_name            = "devacr987"
    location            = "centralindia"
    resource_group_name = "dev-resource-group"
    sku                 = "Standard"
    admin_enabled       = false

    tags = {
      environment = "Development"
    }
  }
}

aks_details = {
  aks1 = {
    aks_name            = "devaks981"
    location            = "centralindia"
    resource_group_name = "dev-resource-group"
    dns_prefix          = "devaks"

    default_node_pool = {
      node_pool_name = "systempool"
      vm_size        = "Standard_D2s_v3"
      node_count     = 2

      tags = {
        environment = "dev"
        owner       = "devops"
      }
    }
  }
}

db_details = {
  dev_db = {
    name         = "dev-database"
    server_id    = "/subscriptions/a5aaa5ad-6e93-46b9-a1d8-b3f7d19bf107/resourceGroups/dev-resource-group/providers/Microsoft.Sql/servers/devserver981"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 5
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      environment = "dev"
    }
    prevent_destroy = false
  }

  qa_db = {
    name         = "qa-database"
    server_id    = "/subscriptions/a5aaa5ad-6e93-46b9-a1d8-b3f7d19bf107/resourceGroups/dev-resource-group/providers/Microsoft.Sql/servers/devserver981"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 10
    sku_name     = "S1"
    enclave_type = "VBS"
    tags = {
      environment = "qa"
    }
    prevent_destroy = true
  }
}


dbserver_details = {
  dbserver1 = {
    sql_server_name     = "devserver981"
    resource_group_name = "dev-resource-group"
    location            = "centralindia"
    admin_username      = "sqladmin"
    admin_password      = "Password123!"
    tags = {
      environment = "Development"
    }
  }
}
