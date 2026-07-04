# Day 1 – DevOps Engineering Workstation Setup

## Project Summary

The objective of this project is to build a **production-style DevOps engineering portfolio** that demonstrates practical skills in cloud infrastructure, automation, containerization, Infrastructure as Code (IaC), CI/CD, monitoring, security, and DevOps best practices. Rather than focusing solely on learning individual tools, the project emphasizes understanding how modern DevOps technologies work together to design, deploy, and maintain secure, scalable, and highly available cloud environments.

Day 1 focused on establishing a standardized and reproducible **DevOps engineering workstation**. This included configuring a Linux development environment using WSL2, installing essential DevOps tools, validating their functionality, and creating an organized project structure to support the remaining phases of the portfolio.

# Objectives

At the end of Day 1, I was able to:

* Configure Ubuntu 24.04 LTS on WSL2.
* Build a production-ready Linux development environment.
* Install and configure Git for version control.
* Install Python and pip for scripting and automation.
* Install Docker Desktop with WSL2 integration.
* Install and verify Terraform.
* Install and configure AWS CLI.
* Install and configure Azure CLI.
* Create a standardized project workspace.
* Develop an automated workstation verification script.
* Validate that all required tools were functioning correctly.

# Activities Completed

### Environment Setup

* Configured Ubuntu 24.04 LTS using WSL2.
* Updated the operating system.
* Installed essential Linux utilities.

### Version Control

* Configured Git username and email.
* Generated an SSH key pair for GitHub authentication.

### Workspace Organization

Created a structured workspace for the CloudOps Enterprise Platform project.

workspace/
└── cloudops-enterprise-platform/
    ├── 01-github
    ├── 02-terraform
    ├── 03-azure
    ├── 04-ansible
    ├── 05-docker
    ├── 06-traefik
    ├── 07-cicd
    ├── 08-monitoring
    ├── 09-logging
    ├── 10-backup
    ├── 11-security
    ├── 12-portfolio
    ├── notes
    └── resources

### Tool Installation

Successfully installed:

* Git
* Python 3.12
* pip
* Docker
* Docker Compose
* AWS CLI
* Azure CLI
* Terraform

### Verification

* Successfully executed the `hello-world` Docker container.
* Created and executed a reusable workstation verification script.
* Verified that every installed tool was operational.

# Commands Used

## Linux
whoami
pwd
lsb_release -a
uname -a

Purpose:

Verify the operating system and environment.

## System Update

sudo apt update
sudo apt upgrade -y

Purpose:

Update installed packages to the latest versions.

## Install Essential Packages

sudo apt install -y build-essential curl wget unzip zip jq tree git vim nano htop net-tools dnsutils

Purpose:

Install core Linux utilities used in DevOps.

## Configure Git

git config --global user.name
git config --global user.email
git config --list

Purpose:

Configure Git identity.

## Generate SSH Key

ssh-keygen -t ed25519

Purpose:

Enable secure authentication with GitHub.

## Docker

docker --version
docker compose version
docker info
docker run hello-world
docker ps -a
docker images

Purpose:

Validate Docker installation.

## Python

python3 --version
pip3 --version

Purpose:

Verify Python installation.

## AWS CLI

aws --version

Purpose:

Verify AWS CLI installation.

## Azure CLI

az version
az login
az account show

Purpose:

Verify Azure authentication.

## Terraform

terraform version

Purpose:

Verify Terraform installation.


## Verification Script

./verify-tools.sh

Purpose:

Automatically validate the DevOps toolchain.-

# Verification

The workstation successfully passed all validation checks.

| Component           | Status |
| ------------------- | ------ |
| Ubuntu 24.04 LTS    | ✅      |
| Git                 | ✅      |
| Python              | ✅      |
| pip                 | ✅      |
| Docker              | ✅      |
| Docker Compose      | ✅      |
| AWS CLI             | ✅      |
| Azure CLI           | ✅      |
| Terraform           | ✅      |
| Verification Script | ✅      |

# Interview Questions

### Why is WSL2 commonly used by DevOps engineers on Windows?

**Answer**

WSL2 provides a native Linux environment within Windows, enabling engineers to use Linux-based DevOps tools without requiring a dedicated virtual machine.

### Why should engineers verify software after installation?

**Answer**

Verification confirms that software is installed correctly, dependencies are satisfied, and the environment is ready for development or deployment.

### Why is Docker important in DevOps?

**Answer**

Docker packages applications and their dependencies into portable containers, ensuring consistency across development, testing, and production environments.

### Why use Infrastructure as Code tools like Terraform?

**Answer**

Terraform automates infrastructure provisioning, improves consistency, enables version control, and reduces manual configuration errors.

### Why are AWS CLI and Azure CLI important?

**Answer**

They enable engineers to manage cloud resources programmatically, automate tasks, and integrate cloud operations into scripts and CI/CD pipelines.

### Why generate SSH keys instead of using passwords?

**Answer**

SSH keys provide stronger authentication, improved security, and seamless interaction with Git repositories.

### Why organize projects into structured directories?

**Answer**

A standardized directory structure improves maintainability, collaboration, scalability, and navigation as projects grow.

## Challenges

WSL installation failed.

Error:

0x80370102


## Root Cause

Hypervisor was disabled.


## Resolution

Enabled Hypervisor using

bcdedit /set hypervisorlaunchtype auto

Restarted Windows.

Installed Ubuntu successfully.

# Lessons Learned

* Every engineering project begins with a reliable development environment.
* Verification is as important as installation.
* Linux command-line proficiency is fundamental for DevOps.
* Automation starts with small repetitive tasks, such as workstation validation.
* Proper project organization improves long-term productivity.
* Version control should be established before development begins.
* Standardized environments reduce configuration drift and improve reproducibility.

# Reflection

Today marked the beginning of my transition from IT Support Engineering to DevOps Engineering. While much of the work involved setting up the development environment, I gained a deeper appreciation for the importance of building on a solid foundation.

I learned that successful DevOps practices depend on consistency, automation, and verification rather than assumptions. Every tool was intentionally installed, tested, and validated to ensure the workstation is production-ready.

Completing this setup has prepared me for the next phases of the project, where I will begin applying these tools to provision infrastructure, automate deployments, and build production-style cloud solutions. This foundation gives me confidence that I can focus on solving engineering problems rather than troubleshooting my environment.

## Key Takeaway

**"A DevOps engineer's first deployment is not an application—it's a reliable, repeatable, and well-documented engineering workstation."**
