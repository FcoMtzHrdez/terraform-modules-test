variable "storage_account_name" {
  description = "User-defined name of the resource that will be used in combination with CIO Naming convention. Names must be globally unique, only contain alpha-numeric characters, and must not contain any sensitive information that could be traced back to Accenture."
  type        = string
  default     = "fcodatalakesql96"
}