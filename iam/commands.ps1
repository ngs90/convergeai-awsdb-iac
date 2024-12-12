aws iam create-user --user-name iam-terraform-databricks-deployer
aws iam create-access-key --user-name iam-terraform-databricks-deployer

aws iam create-policy \
    --policy-name DatabricksTerraformPolicy \
    --policy-document file://databricks-terraform-policy.json

    aws iam attach-user-policy \
    --user-name iam-terraform-databricks-deployer \
    --policy-arn arn:aws:iam::YOUR_ACCOUNT_ID:policy/DatabricksTerraformPolicy

terraform init
terraform validate
terraform plan


Get-Content .env | ForEach-Object {
    $name, $value = $_.split('=', 2)
    Set-Item -Path "env:$name" -Value $value
}

Get-ChildItem Env:TF_VAR_*