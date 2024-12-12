terraform {
  backend "s3" {
    # Note: Don't specify values here since they'll be passed 
    # via backend-config in the CI/CD pipeline
  }
}