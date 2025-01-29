# Azure Landing Zone Terraform Module

This module is used to deploy an Azure Landing Zone.

## Prerequisites

- Azure CLI
- Terraform
- Azure Subscription

## Usage

1. First copy the terraform.tfvars.example file to terraform.tfvars and fill in the values.
2. Login to Azure using the Azure CLI.
```bash
az login
```
3. Then run the following commands:
```bash
terraform init
terraform plan
terraform apply
```
