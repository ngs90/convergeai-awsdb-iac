databricks_account_id = "14059f76-4477-4566-b6c5-50d6551c84b7"
tags = {
  Environment = "dev"
  Project     = "convergeai"
  Type        = "free trial"
  Platform    = "aws"
}
cidr_block = "10.4.0.0/16"
region     = "eu-central-1"
prefix     = "cnvg"

small_compute_policy = {
  num_workers = {
    type         = "range"
    minValue     = 2
    defaultValue = 2
  }
  autotermination_minutes = {
    type         = "range"
    maxValue     = 45
    defaultValue = 30
  }
  node_type_id = {
    type   = "allowlist"
    values = ["i3.xlarge", "g4dn.xlarge"]
  }
}
