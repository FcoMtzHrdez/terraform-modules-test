variable "environment" {
  description = "Accenture CIO 'Environment' tag. Changing this forces a new resource to be created."
  type        = string
  default     = "Dev"
}

variable "storage_account_rg_name" {
  description = "Resource Group where the resource will be created."
  type        = string
  default     = "VstsRG-franciscoemartinez-f6e3"
}

variable "storage_account_location" {
  description = "Azure Storage Account location where the resource will be created."
  type        = string
  default     = "centralus"
}

variable "storage_account_name" {
  description = "User-defined name of the resource that will be used in combination with CIO Naming convention. Names must be globally unique, only contain alpha-numeric characters, and must not contain any sensitive information that could be traced back to Accenture."
  type        = string
  default     = "ciofcomtzstorage96"
}

variable "storage_account_kind" {
  description = "Type of storage account to be provisioned. Valid options are 'StorageV2' or 'BlockBlobStorage'."
  type        = string
  default     = "StorageV2"
  validation {
    condition = (
      lower(var.storage_account_kind) == "storagev2" ||
      lower(var.storage_account_kind) == "blockblobstorage"
    )
    error_message = "Only \"StorageV2\" and \"BlockBlobStorage\" kinds are allowed to be used."
  }
}

variable "storage_account_tier" {
  description = "Defines the performance tier to use for this storage account. Valid options are 'Standard' or 'Premium'."
  type        = string
  default     = "Standard"
}

variable "storage_account_repl_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are 'LRS', 'GRS', 'RA-GRS', 'ZRS', 'GZRS' (StorageV2 only), 'RA-GZRS' (StorageV2 only)."
  type        = string
  default     = "LRS"
}