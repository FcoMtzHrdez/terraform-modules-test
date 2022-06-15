##aqui creamos los modulos, que son como cosas mas especificas
##con sus propias variables por ejemplo creamos un datalake en otra region diferente a las
##especificaciones generales

module "datalake-sql"{
    source = "../datalake"
    storage_account_name                     = var.storage_account_name
}