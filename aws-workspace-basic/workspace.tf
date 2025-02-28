resource "databricks_mws_networks" "this" {
  provider           = databricks.account
  account_id         = var.databricks_account_id
  network_name       = "${local.prefix}-network"
  security_group_ids = [module.vpc.default_security_group_id]
  subnet_ids         = module.vpc.private_subnets
  vpc_id             = module.vpc.vpc_id
}

resource "databricks_mws_storage_configurations" "this" {
  provider                   = databricks.account
  account_id                 = var.databricks_account_id
  bucket_name                = aws_s3_bucket.root_storage_bucket.bucket
  storage_configuration_name = "${local.prefix}-storage"
}

resource "databricks_mws_credentials" "this" {
  provider         = databricks.account
  role_arn         = aws_iam_role.cross_account_role.arn
  credentials_name = "${local.prefix}-creds"
  depends_on       = [time_sleep.wait]
}

## Adding 20 second timer to avoid Failed credential validation check
resource "time_sleep" "wait" {
  create_duration = "20s"
  depends_on = [
    aws_iam_role_policy.this
  ]
}

resource "databricks_mws_workspaces" "this" {
  provider       = databricks.account
  account_id     = var.databricks_account_id
  aws_region     = var.region
  workspace_name = local.prefix

  credentials_id           = databricks_mws_credentials.this.credentials_id
  storage_configuration_id = databricks_mws_storage_configurations.this.storage_configuration_id
  network_id               = databricks_mws_networks.this.network_id

  token {
    comment = "Terraform"
  }
}

data "databricks_mws_workspaces" "this" {
  provider   = databricks.account
  depends_on = [databricks_mws_workspaces.this]
}

