# Terraform Sequence

This document provides the exact commands you need to successfully execute the multi-environment Terraform exam deployment.

## PHASE 1 — SETUP
```bash
# Verify the installed Terraform version
terraform --version

# Verify your active AWS identity/credentials
aws sts get-caller-identity

# Initialize the Terraform working directory
terraform init

# List all available Terraform workspaces
terraform workspace list
```

## PHASE 2 — BUILD & INSPECT
```bash
# Ensure all Terraform configuration files are cleanly formatted
terraform fmt

# Validate the syntax and configuration logic
terraform validate
```

## PHASE 3 — DEPLOYMENT COMMANDS
```bash
# --- DEV ENVIRONMENT ---
# Switch to the dev workspace
terraform workspace select dev

# Plan the dev infrastructure using the dev variables file
terraform plan -var-file="terraform.tfvars.dev"

# Apply the dev infrastructure
terraform apply -var-file="terraform.tfvars.dev" -auto-approve

# --- PROD ENVIRONMENT ---
# Switch to the prod workspace
terraform workspace select prod

# Plan the prod infrastructure using the prod variables file
terraform plan -var-file="terraform.tfvars.prod"

# Apply the prod infrastructure
terraform apply -var-file="terraform.tfvars.prod" -auto-approve
```

## PHASE 4 — VERIFICATION
```bash
# List all workspaces to confirm their existence
terraform workspace list

# Show the currently active workspace
terraform workspace show

# List all tracked resources in the current workspace state
terraform state list

# Confirm the configuration remains valid post-deployment
terraform validate

# Ensure no files were manually changed to break formatting
terraform fmt -check

# Verify dev is clean (switch back to dev and verify no changes)
terraform workspace select dev
terraform plan -var-file="terraform.tfvars.dev"

# Verify prod is clean (switch back to prod and verify no changes)
terraform workspace select prod
terraform plan -var-file="terraform.tfvars.prod"
```
