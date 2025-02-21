
resource "databricks_cluster_policy" "small_compute_policy" {
  name       = "Small Compute Policy"
  definition = jsonencode(merge(local.default_compute_policy, var.small_compute_policy))
  depends_on = [data.databricks_mws_workspaces.this]
}