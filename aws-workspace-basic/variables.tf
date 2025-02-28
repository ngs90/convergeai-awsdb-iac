variable "databricks_account_id" {
  type        = string
  description = "Databricks Account ID"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Optional tags to add to created resources"
}

variable "cidr_block" {
  description = ""
  type        = string
  default     = "10.4.0.0/16"
}

variable "region" {
  default     = "eu-west-2"
  type        = string
  description = "AWS region to deploy to"
}

variable "prefix" {
  default     = "demo"
  type        = string
  description = "Prefix for use in the generated names"
}

variable "databricks_client_id" {
  type        = string
  description = "DB client ID"
}

variable "databricks_client_secret" {
  type        = string
  description = "DB client secret"
}

variable "small_compute_policy" {
  description = "Overrides for the default compute policy"
  default     = {}
}


