Based on the AWS Databricks Terraform basic module: 
* https://github.com/databricks/terraform-databricks-examples/tree/main/modules/aws-workspace-basic 
 

### Environment Variables

##### Databricks Variables

* `TF_VAR_databricks_account_id`: The unique account ID for your Databricks account. Can be found here: https://accounts.cloud.databricks.com.

* `TF_VAR_databricks_client_id`: The client ID for authenticating with the Databricks (service principal)

* `TF_VAR_databricks_client_secret`: The secret key associated with the client ID for secure authentication (service principal)

* `TF_VAR_databricks_host`: The base URL for Databricks API requests (default: https://accounts.cloud.databricks.com when using AWS).

#### AWS Variables

* `AWS_ACCESS_KEY_ID`: The access key ID for AWS, used for authentication with AWS services (created IAM User)

* `AWS_SECRET_ACCESS_KEY`: The secret access key for AWS authentication.

* `AWS_REGION`: The AWS region where resources will be deployed (in the example Frankfurt: eu-central-1).


#### S3 Variables 

* `TF_STATE_BUCKET`: The S3 bucket where the Terraform statefile is located. The bucket must already exists before running the pipeline.