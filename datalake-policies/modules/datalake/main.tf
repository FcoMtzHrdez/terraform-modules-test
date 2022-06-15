###esta es como la plantilla principal del datalake, aqui damos las especificaciones generales
##junto con sus variables generales

resource "azurerm_storage_account" "DataLake" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_account_rg_name
  location                 = var.storage_account_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_repl_type
  is_hns_enabled           = true

  network_rules {
    # bypass                     = "AzureServices"
    default_action             = "Allow"    
  }
}