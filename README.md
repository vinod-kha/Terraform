# AWS Infrastructure Deployment with Terraform

This Terraform project automates the deployment of AWS infrastructure and utilizes S3 and DynamoDB for remote state management.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Terraform Configuration](#terraform-configuration)
- [Remote State Management](#remote-state-management)
- [Deployment Steps](#deployment-steps)
- [Accessing Resources](#accessing-resources)
- [Cleaning Up](#cleaning-up)

## Overview

This Terraform project creates AWS infrastructure components such as VPC, EC2 instances, security groups, and more. It utilizes Terraform's remote state management feature with an S3 bucket and DynamoDB for state locking.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- Terraform CLI installed on your machine.
- AWS CLI configured with appropriate access credentials.
- AWS account with permissions to create resources.

## Project Structure

The project structure is as follows:

```
terraform-aws-infra/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── backend.tf
├── statefile_scenarios.md
└── README.md
```

- `main.tf`: Contains the Terraform configuration for creating AWS resources.
- `variables.tf`: Defines input variables used in the Terraform configuration.
- `terraform.tfvars`: Specifies values for input variables.
- `backend.tf`: Configures Terraform backend for remote state storage in S3 and DynamoDB.
- `statefile_scenarios.md`: Info about terraform statefile
- `README.md`: Instructions and documentation (you're reading it now).

## Terraform Configuration

Modify the `variables.tf` and `terraform.tfvars` files to customize your AWS infrastructure configuration. Key variables include:

- `region`: AWS region where resources will be created.
- `vpc_cidr_block`: CIDR block for the VPC.
- `instance_type`: Type of EC2 instance to launch.
- `key_name`: Name of the SSH key pair for EC2 instances.
- `bucket_name`: Name of the S3 bucket for storing the Terraform state file.
- `dynamodb_table`: Name of the DynamoDB table for state locking.

## Remote State Management

Terraform uses the S3 bucket and DynamoDB table configured in `backend.tf` for remote state management. Make sure the bucket and table exist and are accessible by Terraform.

## Deployment Steps

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your/repository.git
   ```

2. Navigate to the cloned repository:

   ```bash
   cd <repo>/
   ```

3. Initialize Terraform and configure the backend:

   ```bash
   terraform init
   ```

4. Review and modify the Terraform configuration files (`main.tf`, `variables.tf`, `terraform.tfvars`) as needed.

5. Plan the deployment to preview changes:

   ```bash
   terraform plan
   ```

6. Apply the Terraform configuration to create AWS resources:

   ```bash
   terraform apply
   ```

 7. Now go to dynamodb table and check for state locking.
 8. Navigate to s3 bucket weather statefile is stored or not

## Accessing Resources

After deployment, Terraform will display outputs such as the public IP addresses of created resources. Use these outputs to access and manage your AWS resources.

## Cleaning Up

To clean up and destroy the resources created by Terraform:

1. Navigate to the project directory.

2. Run the following command to destroy resources:

   ```bash
   terraform destroy
   ```

