# Day 03 – Infrastructure as Code with Terraform

**Project:** CloudOps Enterprise Platform  
**Module:** 02-Terraform / 01-Basics  
**Date:** July 2026

# Objective

Introduce Infrastructure as Code (IaC) by provisioning cloud resources on AWS using Terraform while following industry best practices for modular configuration, security, validation, and lifecycle management.

# Key Concepts Covered

## Infrastructure as Code (IaC)

Infrastructure as Code (IaC) is the practice of provisioning and managing infrastructure through declarative configuration files instead of manual console operations.

### Benefits

- Infrastructure automation
- Consistent deployments
- Repeatable environments
- Version-controlled infrastructure
- Reduced human error
- Faster provisioning and recovery

## Declarative vs Imperative

### Imperative

Describes **how** infrastructure should be created through a sequence of commands.

Example:

- Create bucket
- Enable encryption
- Enable versioning
- Block public access

Each step must be explicitly defined.

### Declarative

Describes **what** the desired infrastructure should look like.

Terraform determines the actions required to achieve the desired state while maintaining consistency through its state file.

# Why Terraform?

Terraform enables cloud infrastructure to be:

- Automated
- Version controlled
- Reproducible
- Provider independent
- Easily scalable

# Project Structure

02-terraform/
└── 01-basics/
    ├── README.md
    ├── bucket.tf
    ├── providers.tf
    ├── variables.tf
    ├── terraform.tfvars
    ├── outputs.tf
    ├── security.tf
    ├── versioning.tf
    └── versions.tf

# Why Split Terraform into Multiple Files?

Professional Terraform projects avoid placing everything inside a single "main.tf".

Splitting configurations improves:

- Readability
- Maintainability
- Reusability
- Team collaboration
- Scalability

Each file has a clearly defined responsibility.

| File | Purpose |
|------|----------|
| versions.tf | Terraform and provider versions |
| providers.tf | AWS provider configuration |
| variables.tf | Variable definitions |
| terraform.tfvars | Variable values |
| bucket.tf | S3 bucket resource |
| security.tf | Encryption and public access controls |
| versioning.tf | Bucket versioning |
| outputs.tf | Useful resource outputs |


# AWS Environment Preparation

Configured AWS CLI using an IAM user instead of the root account.

Verified authentication using: aws sts get-caller-identity

Confirmed region configuration: aws configure list

# Terraform Workflow

Formatted configuration: terraform fmt

Initialized project: terraform init

Validated configuration: terraform validate

Previewed infrastructure: terraform plan

Provisioned resources: terraform apply

Verified deployment: terraform output & aws s3 ls

Destroyed infrastructure: terraform destroy

# Infrastructure Provisioned: AWS S3 Bucket

Additional security configurations:

- Server-side encryption (AES-256)
- Bucket versioning
- Public access block
- Resource tagging

# Validation Performed

✔ Terraform configuration formatted

✔ Configuration validated successfully

✔ Execution plan reviewed before deployment

✔ Bucket successfully created

✔ Outputs verified

✔ Resource confirmed in AWS CLI

✔ Infrastructure successfully destroyed

✔ AWS account returned to clean state

# Challenges Encountered

## Challenge 1 – AWS Authentication

### Root Cause

Terraform could not communicate with AWS because no CLI credentials were configured.

### Resolution

Created an IAM user specifically for Terraform.

Configured AWS CLI using: aws configure

Verified authentication using: aws sts get-caller-identity

### Challenge 2

Determining how to organize Terraform configuration files.

**Root Cause**

Keeping all resources inside `main.tf` reduces readability and maintainability.

**Resolution**

Refactored the project into logical files based on responsibility:

- bucket.tf
- security.tf
- versioning.tf
- providers.tf
- variables.tf
- outputs.tf

## Challenge 3 – Infrastructure Security

### Root Cause

Initial deployment created only an S3 bucket.

The bucket lacked production-grade security controls.

### Resolution

Enhanced the infrastructure by implementing:

- Server-side encryption
- Bucket versioning
- Public access blocking

This transformed the deployment from a basic lab into a more production-oriented implementation.

# Lessons Learned

- Infrastructure should always be defined as code.
- Declarative configurations improve consistency and reduce operational complexity.
- Validation should precede deployment.
- Security should be implemented during provisioning, not after deployment.
- Terraform state enables infrastructure lifecycle management.
- Destroying unused resources is an important cloud cost management practice.

# Skills Demonstrated

- Infrastructure as Code (Terraform)
- AWS CLI
- IAM Authentication
- AWS S3
- Terraform Providers
- Variables
- Outputs
- Terraform State
- Infrastructure Validation
- Infrastructure Security
- Resource Lifecycle Management

# Deliverables

Completed:

- AWS CLI configuration
- Terraform project structure
- Modular Terraform configuration
- Secure S3 bucket deployment
- Infrastructure validation
- Infrastructure destruction
- Engineering documentation

# Reflection

Today marked my transition from manually provisioning cloud resources to managing infrastructure declaratively using Terraform.

Beyond simply creating an S3 bucket, I implemented foundational security controls, validated each stage of the deployment lifecycle, and safely decommissioned the infrastructure to avoid unnecessary cloud costs.

This exercise reinforced an important DevOps principle:

> Reliable infrastructure is not defined by what is created, but by how consistently, securely, and repeatably it can be provisioned, validated, and destroyed.


## Day 03 Summary

**Objective:** Provision AWS infrastructure using Terraform.

**Resources Created:**
- AWS S3 Bucket
- Server-side encryption
- Versioning
- Public access block

**Tools Used:**
- Terraform
- AWS CLI
- Git
- Ubuntu (WSL2)

**Outcome:**
Successfully provisioned, validated, secured, verified, and destroyed cloud infrastructure using Infrastructure as Code principles.
